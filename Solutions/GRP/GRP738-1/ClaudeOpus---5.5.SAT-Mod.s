%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GRP738-1 : TPTP v10.0.0. Released v4.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Satisfiable
% Output   : Model (Lean 4 development, as comment lines)
% Verified : Lean 4.35.0: `sat : TPTP.Satisfiable` (or Satisfiable1) compiles against a
%            Statement.lean generated mechanically from the TPTP file, and depends only on the axioms
%            propext, Classical.choice, Quot.sound
% Status   : agrees with TPTP v10.0.0 (Satisfiable)

% Comments : Model written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness, as a Lean
%            4 development. The model is usually infinite, so it is not given as a TPTP finite
%            interpretation. Model description: GRP738-1 (proper Buchsteiner loop): the Buchsteiner
%            loop of order 32 of Drápal and Kinyon (arXiv:0812.0412, Lemma 6.1 / Corollary 6.2),
%            obtained by doubling Q = Q8 × C2: P = Q ∪ zQ with u * v = uv, u * zv =
%            z·uv·q(u)g(u,v)g(v,u), zu * v = z·uv·g(u,v), zu * zv = uv·q(u)g(v,u), where q(u) = 1 iff
%            u ∈ {-1, i, j, k} and g(u,v) = q(vu) q(u) q(v) (values in C2). Element n < 32 ↔ (e, s,
%            u, a) = (n/16, n/8 % 2, n/2 % 4, n % 2): e = z-flag, (s,u) = (-1)^s·u ∈ Q8 with u ∈
%            {1,i,j,k} = {0,1,2,3}, a ∈ C2. Every clause is checked by `decide`.
% Checking : Tools/check_lean_model.sh GRP738-1 <this file>: extracts the Lean source between the SZS
%            markers, regenerates Statement.lean from the TPTP problem with Tools/tptp2lean.py
%            (clauses become Lean propositions over an arbitrary type with the problem's symbols),
%            compiles the model, and prints the axioms `sat` depends on. sorry, axiom, opaque,
%            native_decide and extern are rejected.
%------------------------------------------------------------------------------
% SZS status Satisfiable for GRP738-1
% SZS output start Model for GRP738-1
% import Statement
% open TPTP
% set_option maxRecDepth 100000
% set_option maxHeartbeats 0
%
% /-! GRP738-1 (proper Buchsteiner loop): the Buchsteiner loop of order 32 of Drápal and Kinyon
% (arXiv:0812.0412, Lemma 6.1 / Corollary 6.2), obtained by doubling Q = Q8 × C2:
% P = Q ∪ zQ with
%   u * v = uv,  u * zv = z·uv·q(u)g(u,v)g(v,u),  zu * v = z·uv·g(u,v),  zu * zv = uv·q(u)g(v,u),
% where q(u) = 1 iff u ∈ {-1, i, j, k} and g(u,v) = q(vu) q(u) q(v) (values in C2).
% Element n < 32 ↔ (e, s, u, a) = (n/16, n/8 % 2, n/2 % 4, n % 2): e = z-flag, (s,u) = (-1)^s·u ∈ Q8
% with u ∈ {1,i,j,k} = {0,1,2,3}, a ∈ C2.  Every clause is checked by `decide`. -/
%
% abbrev M := Fin 32
% /-- sign of the product of quaternion units u, v ∈ {1,i,j,k} (their unit part is u xor v) -/
% def qflip (u v : Nat) : Nat :=
%   if u = 0 ∨ v = 0 then 0 else if u = v then 1
%   else if (u = 1 ∧ v = 2) ∨ (u = 2 ∧ v = 3) ∨ (u = 3 ∧ v = 1) then 0 else 1
% /-- Q8 elements as s*4 + u -/
% def gmul (x y : Nat) : Nat := ((x / 4 + y / 4 + qflip (x % 4) (y % 4)) % 2) * 4 + (((x % 4) / 2 + (y % 4) / 2) % 2 * 2 + (x % 2 + y % 2) % 2)
% def ginv (x : Nat) : Nat := if x % 4 = 0 then x else ((x / 4 + 1) % 2) * 4 + x % 4
% def q (x : Nat) : Nat := if (x / 4 = 1 ∧ x % 4 = 0) ∨ (x / 4 = 0 ∧ x % 4 ≠ 0) then 1 else 0
% def g (x y : Nat) : Nat := (q (gmul y x) + q x + q y) % 2
% def corr (e1 e2 x y : Nat) : Nat :=
%   if e1 = 0 then (if e2 = 0 then 0 else q x + g x y + g y x)
%   else (if e2 = 0 then g x y else q x + g y x)
% def mk (e x a : Nat) : M := ⟨(e % 2) * 16 + (x % 8) * 2 + a % 2, by omega⟩
% def mul (p r : M) : M :=
%   let e1 := p.val / 16; let x := (p.val / 2) % 8; let a := p.val % 2
%   let e2 := r.val / 16; let y := (r.val / 2) % 8; let b := r.val % 2
%   mk (e1 + e2) (gmul x y) (a + b + corr e1 e2 x y)
% /-- ld p r is the q with p * q = r -/
% def ld (p r : M) : M :=
%   let e1 := p.val / 16; let x := (p.val / 2) % 8; let a := p.val % 2
%   let e3 := r.val / 16; let w := (r.val / 2) % 8; let c := r.val % 2
%   let e2 := (e1 + e3) % 2; let y := gmul (ginv x) w
%   mk e2 y (c + a + corr e1 e2 x y)
% /-- rd r q is the p with p * q = r -/
% def rd (r p : M) : M :=
%   let e3 := r.val / 16; let w := (r.val / 2) % 8; let c := r.val % 2
%   let e2 := p.val / 16; let y := (p.val / 2) % 8; let b := p.val % 2
%   let e1 := (e3 + e2) % 2; let x := gmul w (ginv y)
%   mk e1 x (c + b + corr e1 e2 x y)
%
% def I : Sig M where
%   f_mult := mul
%   f_ld := ld
%   f_rd := rd
%   c_unit := 0
%   c_a := 2
%   c_b := 4
%   c_c := 16
%
% theorem sat : Satisfiable := by
%   refine ⟨M, I, ⟨0⟩, ?_⟩
%   simp only [Holds, I]
%   refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
%   all_goals decide
% SZS output end Model for GRP738-1
%------------------------------------------------------------------------------
