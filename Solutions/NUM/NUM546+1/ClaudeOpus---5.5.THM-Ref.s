%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM546+1 : TPTP v10.0.0. Released v4.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Theorem
% Output   : Refutation
% Verified : GDV VerifiedGood with Vampire 5.1 as the trusted ATP; every inference also checked with
%            E 3.2.5
% Status   : agrees with TPTP v10.0.0 (Theorem)

% Comments : Proof written by Claude Opus 5.5 (Anthropic) working in the Claude Code agent harness:
%            the model worked out the mathematical argument and wrote the proof as a chain of lemmas;
%            E 3.2.5 was used only as a step checker and short-timeout lemma oracle.
%            inference(lemma,...) means: this formula is a logical consequence of its parents (no
%            specific calculus rule). Notes: SAD Ramsey-infinite step; fof lemmas (no defs)
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for NUM546+1
% SZS output start Refutation for NUM546+1
fof(m__, conjecture, aSubsetOf0(xS,xT), file('Problems/NUM/NUM546+1.p',m__)).
fof(m___neg, negated_conjecture, ~ (aSubsetOf0(xS,xT)), inference(negate_conjecture,[status(cth)],[m__])).
fof(mDefSub, definition, (! [W0] : (aSet0(W0) => (! [W1] : (aSubsetOf0(W1,W0) <=> (aSet0(W1) & (! [W2] : (aElementOf0(W2,W1) => aElementOf0(W2,W0)))))))), file('Problems/NUM/NUM546+1.p',mDefSub)).
fof(m__2202_02, hypothesis, (aSet0(xS) & aSet0(xT) & xk != sz00), file('Problems/NUM/NUM546+1.p',m__2202_02)).
fof(m__2227, hypothesis, (aSubsetOf0(slbdtsldtrb0(xS,xk),slbdtsldtrb0(xT,xk)) & slbdtsldtrb0(xS,xk) != slcrc0), file('Problems/NUM/NUM546+1.p',m__2227)).
fof(mDefEmp, definition, (! [W0] : (W0 = slcrc0 <=> (aSet0(W0) & ~ ((? [W1] : aElementOf0(W1,W0)))))), file('Problems/NUM/NUM546+1.p',mDefEmp)).
fof(mDefSel, definition, (! [W0,W1] : ((aSet0(W0) & aElementOf0(W1,szNzAzT0)) => (! [W2] : (W2 = slbdtsldtrb0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aSubsetOf0(W3,W0) & sbrdtbr0(W3) = W1)))))))), file('Problems/NUM/NUM546+1.p',mDefSel)).
fof(m__2202, hypothesis, aElementOf0(xk,szNzAzT0), file('Problems/NUM/NUM546+1.p',m__2202)).
fof(mCardNum, axiom, (! [W0] : (aSet0(W0) => (aElementOf0(sbrdtbr0(W0),szNzAzT0) <=> isFinite0(W0)))), file('Problems/NUM/NUM546+1.p',mCardNum)).
fof(mCardEmpty, axiom, (! [W0] : (aSet0(W0) => (sbrdtbr0(W0) = sz00 <=> W0 = slcrc0))), file('Problems/NUM/NUM546+1.p',mCardEmpty)).
fof(mCardDiff, axiom, (! [W0] : (aSet0(W0) => (! [W1] : ((isFinite0(W0) & aElementOf0(W1,W0)) => szszuzczcdt0(sbrdtbr0(sdtmndt0(W0,W1))) = sbrdtbr0(W0))))), file('Problems/NUM/NUM546+1.p',mCardDiff)).
fof(mCardCons, axiom, (! [W0] : ((aSet0(W0) & isFinite0(W0)) => (! [W1] : (aElement0(W1) => (~ aElementOf0(W1,W0) => sbrdtbr0(sdtpldt0(W0,W1)) = szszuzczcdt0(sbrdtbr0(W0))))))), file('Problems/NUM/NUM546+1.p',mCardCons)).
fof(mFDiffSet, axiom, (! [W0] : (aElement0(W0) => (! [W1] : ((aSet0(W1) & isFinite0(W1)) => isFinite0(sdtmndt0(W1,W0)))))), file('Problems/NUM/NUM546+1.p',mFDiffSet)).
fof(mDefDiff, definition, (! [W0,W1] : ((aSet0(W0) & aElement0(W1)) => (! [W2] : (W2 = sdtmndt0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aElement0(W3) & aElementOf0(W3,W0) & W3 != W1)))))))), file('Problems/NUM/NUM546+1.p',mDefDiff)).
fof(mEOfElem, axiom, (! [W0] : (aSet0(W0) => (! [W1] : (aElementOf0(W1,W0) => aElement0(W1))))), file('Problems/NUM/NUM546+1.p',mEOfElem)).
fof(mDefCons, definition, (! [W0,W1] : ((aSet0(W0) & aElement0(W1)) => (! [W2] : (W2 = sdtpldt0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aElement0(W3) & (aElementOf0(W3,W0) | W3 = W1))))))))), file('Problems/NUM/NUM546+1.p',mDefCons)).
fof(s1, plain, (? [X] : (aElementOf0(X,xS) & ~ aElementOf0(X,xT))), inference(lemma,[status(thm)],[m___neg,mDefSub,m__2202_02])).
fof(s2, plain, (? [A] : aElementOf0(A,slbdtsldtrb0(xS,xk))), inference(lemma,[status(thm)],[m__2227,mDefEmp,mDefSel,m__2202,m__2202_02])).
fof(s3, plain, (! [A] : (aElementOf0(A,slbdtsldtrb0(xS,xk)) => (aSubsetOf0(A,xS) & sbrdtbr0(A) = xk & aSubsetOf0(A,xT)))), inference(lemma,[status(thm)],[mDefSel,m__2227,mDefSub,m__2202,m__2202_02])).
fof(s4, plain, (! [A] : ((aSubsetOf0(A,xS) & sbrdtbr0(A) = xk) => (aSet0(A) & isFinite0(A) & A != slcrc0))), inference(lemma,[status(thm)],[mDefSub,mCardNum,mCardEmpty,m__2202,m__2202_02])).
fof(s5, plain, (! [A,X,Y] : ((aSet0(A) & isFinite0(A) & aElementOf0(Y,A) & aElement0(X) & ~ aElementOf0(X,A)) => sbrdtbr0(sdtpldt0(sdtmndt0(A,Y),X)) = sbrdtbr0(A))), inference(lemma,[status(thm)],[mCardDiff,mCardCons,mFDiffSet,mDefDiff,mEOfElem])).
fof(s6a, plain, (! [A,X,Y] : ((aSet0(A) & aElement0(Y) & aElement0(X)) => (aSet0(sdtmndt0(A,Y)) & aSet0(sdtpldt0(sdtmndt0(A,Y),X))))), inference(lemma,[status(thm)],[mDefDiff,mDefCons])).
fof(s6b, plain, (! [A,X,Y,Z] : ((aSet0(A) & aElement0(Y) & aElement0(X) & aElementOf0(Z,sdtpldt0(sdtmndt0(A,Y),X))) => (aElementOf0(Z,A) | Z = X))), inference(lemma,[status(thm)],[mDefDiff,mDefCons,s6a])).
fof(s6, plain, (! [A,X,Y,W] : ((aSet0(A) & aElementOf0(Y,A) & aElement0(X) & aSubsetOf0(A,W) & aSet0(W) & aElementOf0(X,W)) => aSubsetOf0(sdtpldt0(sdtmndt0(A,Y),X),W))), inference(lemma,[status(thm)],[s6a,s6b,mDefSub,mEOfElem])).
fof(s7, plain, (! [A,X,Y] : ((aSet0(A) & aElementOf0(Y,A) & aElement0(X)) => aElementOf0(X,sdtpldt0(sdtmndt0(A,Y),X)))), inference(lemma,[status(thm)],[mDefCons,mDefDiff,mEOfElem])).
fof(s8, plain, (! [B] : ((aSubsetOf0(B,xS) & sbrdtbr0(B) = xk) => aSubsetOf0(B,xT))), inference(lemma,[status(thm)],[mDefSel,m__2227,mDefSub,m__2202,m__2202_02])).
fof(done, plain, $false, inference(lemma,[status(thm)],[s1,s2,s3,s4,s5,s6,s7,s8,mDefEmp,mDefSub,mEOfElem,m__2202_02])).
% SZS output end Refutation for NUM546+1
%------------------------------------------------------------------------------
