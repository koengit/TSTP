%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : GRP739-1 : TPTP v10.0.0. Released v4.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : none (written by the LLM agent Claude Opus 5.5 in Claude Code; see Comments)

% Result   : Satisfiable
% Output   : FiniteModel
% Verified : the Lean model is certified (see the -Mod file); this interpretation was additionally
%            checked by evaluating every clause of the problem over the domain (an independent Python
%            evaluator)
% Status   : agrees with TPTP v10.0.0 (Satisfiable)

% Comments : The model is finite (15 elements). It is the Lean model of the SAT-Mod solution of the
%            same problem, written by Claude Opus 5.5 (Anthropic) in the Claude Code agent harness
%            and certified in Lean. THIS INTERPRETATION WAS PRODUCED BY LEAN, not written by hand:
%            Lean 4.35.0 evaluated every operation of the certified Lean model on all elements of the
%            domain and printed the tables below. Domain element "di" is element i of the Lean
%            carrier.
% Checking : any finite-model checker for TPTP interpretations, e.g. AGMV via SystemOnTSTP
%------------------------------------------------------------------------------
% SZS status Satisfiable for GRP739-1
% SZS output start FiniteModel for GRP739-1
fof(interp_domain,interpretation-domains,
    ! [X] :
      ( X = "d0"
      | X = "d1"
      | X = "d2"
      | X = "d3"
      | X = "d4"
      | X = "d5"
      | X = "d6"
      | X = "d7"
      | X = "d8"
      | X = "d9"
      | X = "d10"
      | X = "d11"
      | X = "d12"
      | X = "d13"
      | X = "d14" ) ).

fof(interp_a,interpretation-mappings,
    ( a = "d1" ) ).

fof(interp_b,interpretation-mappings,
    ( b = "d5" ) ).

fof(interp_c,interpretation-mappings,
    ( c = "d5" ) ).

fof(interp_ld_d0,interpretation-mappings,
    ( ld("d0","d0") = "d0"
    & ld("d0","d1") = "d1"
    & ld("d0","d2") = "d2"
    & ld("d0","d3") = "d3"
    & ld("d0","d4") = "d4"
    & ld("d0","d5") = "d5"
    & ld("d0","d6") = "d6"
    & ld("d0","d7") = "d7"
    & ld("d0","d8") = "d8"
    & ld("d0","d9") = "d9"
    & ld("d0","d10") = "d10"
    & ld("d0","d11") = "d11"
    & ld("d0","d12") = "d12"
    & ld("d0","d13") = "d13"
    & ld("d0","d14") = "d14" ) ).

fof(interp_ld_d1,interpretation-mappings,
    ( ld("d1","d0") = "d4"
    & ld("d1","d1") = "d0"
    & ld("d1","d2") = "d1"
    & ld("d1","d3") = "d2"
    & ld("d1","d4") = "d3"
    & ld("d1","d5") = "d9"
    & ld("d1","d6") = "d5"
    & ld("d1","d7") = "d6"
    & ld("d1","d8") = "d7"
    & ld("d1","d9") = "d8"
    & ld("d1","d10") = "d14"
    & ld("d1","d11") = "d10"
    & ld("d1","d12") = "d11"
    & ld("d1","d13") = "d12"
    & ld("d1","d14") = "d13" ) ).

fof(interp_ld_d2,interpretation-mappings,
    ( ld("d2","d0") = "d3"
    & ld("d2","d1") = "d4"
    & ld("d2","d2") = "d0"
    & ld("d2","d3") = "d1"
    & ld("d2","d4") = "d2"
    & ld("d2","d5") = "d8"
    & ld("d2","d6") = "d9"
    & ld("d2","d7") = "d5"
    & ld("d2","d8") = "d6"
    & ld("d2","d9") = "d7"
    & ld("d2","d10") = "d13"
    & ld("d2","d11") = "d14"
    & ld("d2","d12") = "d10"
    & ld("d2","d13") = "d11"
    & ld("d2","d14") = "d12" ) ).

fof(interp_ld_d3,interpretation-mappings,
    ( ld("d3","d0") = "d2"
    & ld("d3","d1") = "d3"
    & ld("d3","d2") = "d4"
    & ld("d3","d3") = "d0"
    & ld("d3","d4") = "d1"
    & ld("d3","d5") = "d7"
    & ld("d3","d6") = "d8"
    & ld("d3","d7") = "d9"
    & ld("d3","d8") = "d5"
    & ld("d3","d9") = "d6"
    & ld("d3","d10") = "d12"
    & ld("d3","d11") = "d13"
    & ld("d3","d12") = "d14"
    & ld("d3","d13") = "d10"
    & ld("d3","d14") = "d11" ) ).

fof(interp_ld_d4,interpretation-mappings,
    ( ld("d4","d0") = "d1"
    & ld("d4","d1") = "d2"
    & ld("d4","d2") = "d3"
    & ld("d4","d3") = "d4"
    & ld("d4","d4") = "d0"
    & ld("d4","d5") = "d6"
    & ld("d4","d6") = "d7"
    & ld("d4","d7") = "d8"
    & ld("d4","d8") = "d9"
    & ld("d4","d9") = "d5"
    & ld("d4","d10") = "d11"
    & ld("d4","d11") = "d12"
    & ld("d4","d12") = "d13"
    & ld("d4","d13") = "d14"
    & ld("d4","d14") = "d10" ) ).

fof(interp_ld_d5,interpretation-mappings,
    ( ld("d5","d0") = "d10"
    & ld("d5","d1") = "d14"
    & ld("d5","d2") = "d13"
    & ld("d5","d3") = "d12"
    & ld("d5","d4") = "d11"
    & ld("d5","d5") = "d0"
    & ld("d5","d6") = "d1"
    & ld("d5","d7") = "d2"
    & ld("d5","d8") = "d3"
    & ld("d5","d9") = "d4"
    & ld("d5","d10") = "d5"
    & ld("d5","d11") = "d8"
    & ld("d5","d12") = "d6"
    & ld("d5","d13") = "d9"
    & ld("d5","d14") = "d7" ) ).

fof(interp_ld_d6,interpretation-mappings,
    ( ld("d6","d0") = "d14"
    & ld("d6","d1") = "d13"
    & ld("d6","d2") = "d12"
    & ld("d6","d3") = "d11"
    & ld("d6","d4") = "d10"
    & ld("d6","d5") = "d4"
    & ld("d6","d6") = "d0"
    & ld("d6","d7") = "d1"
    & ld("d6","d8") = "d2"
    & ld("d6","d9") = "d3"
    & ld("d6","d10") = "d9"
    & ld("d6","d11") = "d7"
    & ld("d6","d12") = "d5"
    & ld("d6","d13") = "d8"
    & ld("d6","d14") = "d6" ) ).

fof(interp_ld_d7,interpretation-mappings,
    ( ld("d7","d0") = "d13"
    & ld("d7","d1") = "d12"
    & ld("d7","d2") = "d11"
    & ld("d7","d3") = "d10"
    & ld("d7","d4") = "d14"
    & ld("d7","d5") = "d3"
    & ld("d7","d6") = "d4"
    & ld("d7","d7") = "d0"
    & ld("d7","d8") = "d1"
    & ld("d7","d9") = "d2"
    & ld("d7","d10") = "d8"
    & ld("d7","d11") = "d6"
    & ld("d7","d12") = "d9"
    & ld("d7","d13") = "d7"
    & ld("d7","d14") = "d5" ) ).

fof(interp_ld_d8,interpretation-mappings,
    ( ld("d8","d0") = "d12"
    & ld("d8","d1") = "d11"
    & ld("d8","d2") = "d10"
    & ld("d8","d3") = "d14"
    & ld("d8","d4") = "d13"
    & ld("d8","d5") = "d2"
    & ld("d8","d6") = "d3"
    & ld("d8","d7") = "d4"
    & ld("d8","d8") = "d0"
    & ld("d8","d9") = "d1"
    & ld("d8","d10") = "d7"
    & ld("d8","d11") = "d5"
    & ld("d8","d12") = "d8"
    & ld("d8","d13") = "d6"
    & ld("d8","d14") = "d9" ) ).

fof(interp_ld_d9,interpretation-mappings,
    ( ld("d9","d0") = "d11"
    & ld("d9","d1") = "d10"
    & ld("d9","d2") = "d14"
    & ld("d9","d3") = "d13"
    & ld("d9","d4") = "d12"
    & ld("d9","d5") = "d1"
    & ld("d9","d6") = "d2"
    & ld("d9","d7") = "d3"
    & ld("d9","d8") = "d4"
    & ld("d9","d9") = "d0"
    & ld("d9","d10") = "d6"
    & ld("d9","d11") = "d9"
    & ld("d9","d12") = "d7"
    & ld("d9","d13") = "d5"
    & ld("d9","d14") = "d8" ) ).

fof(interp_ld_d10,interpretation-mappings,
    ( ld("d10","d0") = "d5"
    & ld("d10","d1") = "d9"
    & ld("d10","d2") = "d8"
    & ld("d10","d3") = "d7"
    & ld("d10","d4") = "d6"
    & ld("d10","d5") = "d10"
    & ld("d10","d6") = "d13"
    & ld("d10","d7") = "d11"
    & ld("d10","d8") = "d14"
    & ld("d10","d9") = "d12"
    & ld("d10","d10") = "d0"
    & ld("d10","d11") = "d1"
    & ld("d10","d12") = "d2"
    & ld("d10","d13") = "d3"
    & ld("d10","d14") = "d4" ) ).

fof(interp_ld_d11,interpretation-mappings,
    ( ld("d11","d0") = "d9"
    & ld("d11","d1") = "d8"
    & ld("d11","d2") = "d7"
    & ld("d11","d3") = "d6"
    & ld("d11","d4") = "d5"
    & ld("d11","d5") = "d14"
    & ld("d11","d6") = "d12"
    & ld("d11","d7") = "d10"
    & ld("d11","d8") = "d13"
    & ld("d11","d9") = "d11"
    & ld("d11","d10") = "d4"
    & ld("d11","d11") = "d0"
    & ld("d11","d12") = "d1"
    & ld("d11","d13") = "d2"
    & ld("d11","d14") = "d3" ) ).

fof(interp_ld_d12,interpretation-mappings,
    ( ld("d12","d0") = "d8"
    & ld("d12","d1") = "d7"
    & ld("d12","d2") = "d6"
    & ld("d12","d3") = "d5"
    & ld("d12","d4") = "d9"
    & ld("d12","d5") = "d13"
    & ld("d12","d6") = "d11"
    & ld("d12","d7") = "d14"
    & ld("d12","d8") = "d12"
    & ld("d12","d9") = "d10"
    & ld("d12","d10") = "d3"
    & ld("d12","d11") = "d4"
    & ld("d12","d12") = "d0"
    & ld("d12","d13") = "d1"
    & ld("d12","d14") = "d2" ) ).

fof(interp_ld_d13,interpretation-mappings,
    ( ld("d13","d0") = "d7"
    & ld("d13","d1") = "d6"
    & ld("d13","d2") = "d5"
    & ld("d13","d3") = "d9"
    & ld("d13","d4") = "d8"
    & ld("d13","d5") = "d12"
    & ld("d13","d6") = "d10"
    & ld("d13","d7") = "d13"
    & ld("d13","d8") = "d11"
    & ld("d13","d9") = "d14"
    & ld("d13","d10") = "d2"
    & ld("d13","d11") = "d3"
    & ld("d13","d12") = "d4"
    & ld("d13","d13") = "d0"
    & ld("d13","d14") = "d1" ) ).

fof(interp_ld_d14,interpretation-mappings,
    ( ld("d14","d0") = "d6"
    & ld("d14","d1") = "d5"
    & ld("d14","d2") = "d9"
    & ld("d14","d3") = "d8"
    & ld("d14","d4") = "d7"
    & ld("d14","d5") = "d11"
    & ld("d14","d6") = "d14"
    & ld("d14","d7") = "d12"
    & ld("d14","d8") = "d10"
    & ld("d14","d9") = "d13"
    & ld("d14","d10") = "d1"
    & ld("d14","d11") = "d2"
    & ld("d14","d12") = "d3"
    & ld("d14","d13") = "d4"
    & ld("d14","d14") = "d0" ) ).

fof(interp_mult_d0,interpretation-mappings,
    ( mult("d0","d0") = "d0"
    & mult("d0","d1") = "d1"
    & mult("d0","d2") = "d2"
    & mult("d0","d3") = "d3"
    & mult("d0","d4") = "d4"
    & mult("d0","d5") = "d5"
    & mult("d0","d6") = "d6"
    & mult("d0","d7") = "d7"
    & mult("d0","d8") = "d8"
    & mult("d0","d9") = "d9"
    & mult("d0","d10") = "d10"
    & mult("d0","d11") = "d11"
    & mult("d0","d12") = "d12"
    & mult("d0","d13") = "d13"
    & mult("d0","d14") = "d14" ) ).

fof(interp_mult_d1,interpretation-mappings,
    ( mult("d1","d0") = "d1"
    & mult("d1","d1") = "d2"
    & mult("d1","d2") = "d3"
    & mult("d1","d3") = "d4"
    & mult("d1","d4") = "d0"
    & mult("d1","d5") = "d6"
    & mult("d1","d6") = "d7"
    & mult("d1","d7") = "d8"
    & mult("d1","d8") = "d9"
    & mult("d1","d9") = "d5"
    & mult("d1","d10") = "d11"
    & mult("d1","d11") = "d12"
    & mult("d1","d12") = "d13"
    & mult("d1","d13") = "d14"
    & mult("d1","d14") = "d10" ) ).

fof(interp_mult_d2,interpretation-mappings,
    ( mult("d2","d0") = "d2"
    & mult("d2","d1") = "d3"
    & mult("d2","d2") = "d4"
    & mult("d2","d3") = "d0"
    & mult("d2","d4") = "d1"
    & mult("d2","d5") = "d7"
    & mult("d2","d6") = "d8"
    & mult("d2","d7") = "d9"
    & mult("d2","d8") = "d5"
    & mult("d2","d9") = "d6"
    & mult("d2","d10") = "d12"
    & mult("d2","d11") = "d13"
    & mult("d2","d12") = "d14"
    & mult("d2","d13") = "d10"
    & mult("d2","d14") = "d11" ) ).

fof(interp_mult_d3,interpretation-mappings,
    ( mult("d3","d0") = "d3"
    & mult("d3","d1") = "d4"
    & mult("d3","d2") = "d0"
    & mult("d3","d3") = "d1"
    & mult("d3","d4") = "d2"
    & mult("d3","d5") = "d8"
    & mult("d3","d6") = "d9"
    & mult("d3","d7") = "d5"
    & mult("d3","d8") = "d6"
    & mult("d3","d9") = "d7"
    & mult("d3","d10") = "d13"
    & mult("d3","d11") = "d14"
    & mult("d3","d12") = "d10"
    & mult("d3","d13") = "d11"
    & mult("d3","d14") = "d12" ) ).

fof(interp_mult_d4,interpretation-mappings,
    ( mult("d4","d0") = "d4"
    & mult("d4","d1") = "d0"
    & mult("d4","d2") = "d1"
    & mult("d4","d3") = "d2"
    & mult("d4","d4") = "d3"
    & mult("d4","d5") = "d9"
    & mult("d4","d6") = "d5"
    & mult("d4","d7") = "d6"
    & mult("d4","d8") = "d7"
    & mult("d4","d9") = "d8"
    & mult("d4","d10") = "d14"
    & mult("d4","d11") = "d10"
    & mult("d4","d12") = "d11"
    & mult("d4","d13") = "d12"
    & mult("d4","d14") = "d13" ) ).

fof(interp_mult_d5,interpretation-mappings,
    ( mult("d5","d0") = "d5"
    & mult("d5","d1") = "d6"
    & mult("d5","d2") = "d7"
    & mult("d5","d3") = "d8"
    & mult("d5","d4") = "d9"
    & mult("d5","d5") = "d10"
    & mult("d5","d6") = "d12"
    & mult("d5","d7") = "d14"
    & mult("d5","d8") = "d11"
    & mult("d5","d9") = "d13"
    & mult("d5","d10") = "d0"
    & mult("d5","d11") = "d4"
    & mult("d5","d12") = "d3"
    & mult("d5","d13") = "d2"
    & mult("d5","d14") = "d1" ) ).

fof(interp_mult_d6,interpretation-mappings,
    ( mult("d6","d0") = "d6"
    & mult("d6","d1") = "d7"
    & mult("d6","d2") = "d8"
    & mult("d6","d3") = "d9"
    & mult("d6","d4") = "d5"
    & mult("d6","d5") = "d12"
    & mult("d6","d6") = "d14"
    & mult("d6","d7") = "d11"
    & mult("d6","d8") = "d13"
    & mult("d6","d9") = "d10"
    & mult("d6","d10") = "d4"
    & mult("d6","d11") = "d3"
    & mult("d6","d12") = "d2"
    & mult("d6","d13") = "d1"
    & mult("d6","d14") = "d0" ) ).

fof(interp_mult_d7,interpretation-mappings,
    ( mult("d7","d0") = "d7"
    & mult("d7","d1") = "d8"
    & mult("d7","d2") = "d9"
    & mult("d7","d3") = "d5"
    & mult("d7","d4") = "d6"
    & mult("d7","d5") = "d14"
    & mult("d7","d6") = "d11"
    & mult("d7","d7") = "d13"
    & mult("d7","d8") = "d10"
    & mult("d7","d9") = "d12"
    & mult("d7","d10") = "d3"
    & mult("d7","d11") = "d2"
    & mult("d7","d12") = "d1"
    & mult("d7","d13") = "d0"
    & mult("d7","d14") = "d4" ) ).

fof(interp_mult_d8,interpretation-mappings,
    ( mult("d8","d0") = "d8"
    & mult("d8","d1") = "d9"
    & mult("d8","d2") = "d5"
    & mult("d8","d3") = "d6"
    & mult("d8","d4") = "d7"
    & mult("d8","d5") = "d11"
    & mult("d8","d6") = "d13"
    & mult("d8","d7") = "d10"
    & mult("d8","d8") = "d12"
    & mult("d8","d9") = "d14"
    & mult("d8","d10") = "d2"
    & mult("d8","d11") = "d1"
    & mult("d8","d12") = "d0"
    & mult("d8","d13") = "d4"
    & mult("d8","d14") = "d3" ) ).

fof(interp_mult_d9,interpretation-mappings,
    ( mult("d9","d0") = "d9"
    & mult("d9","d1") = "d5"
    & mult("d9","d2") = "d6"
    & mult("d9","d3") = "d7"
    & mult("d9","d4") = "d8"
    & mult("d9","d5") = "d13"
    & mult("d9","d6") = "d10"
    & mult("d9","d7") = "d12"
    & mult("d9","d8") = "d14"
    & mult("d9","d9") = "d11"
    & mult("d9","d10") = "d1"
    & mult("d9","d11") = "d0"
    & mult("d9","d12") = "d4"
    & mult("d9","d13") = "d3"
    & mult("d9","d14") = "d2" ) ).

fof(interp_mult_d10,interpretation-mappings,
    ( mult("d10","d0") = "d10"
    & mult("d10","d1") = "d11"
    & mult("d10","d2") = "d12"
    & mult("d10","d3") = "d13"
    & mult("d10","d4") = "d14"
    & mult("d10","d5") = "d0"
    & mult("d10","d6") = "d4"
    & mult("d10","d7") = "d3"
    & mult("d10","d8") = "d2"
    & mult("d10","d9") = "d1"
    & mult("d10","d10") = "d5"
    & mult("d10","d11") = "d7"
    & mult("d10","d12") = "d9"
    & mult("d10","d13") = "d6"
    & mult("d10","d14") = "d8" ) ).

fof(interp_mult_d11,interpretation-mappings,
    ( mult("d11","d0") = "d11"
    & mult("d11","d1") = "d12"
    & mult("d11","d2") = "d13"
    & mult("d11","d3") = "d14"
    & mult("d11","d4") = "d10"
    & mult("d11","d5") = "d4"
    & mult("d11","d6") = "d3"
    & mult("d11","d7") = "d2"
    & mult("d11","d8") = "d1"
    & mult("d11","d9") = "d0"
    & mult("d11","d10") = "d7"
    & mult("d11","d11") = "d9"
    & mult("d11","d12") = "d6"
    & mult("d11","d13") = "d8"
    & mult("d11","d14") = "d5" ) ).

fof(interp_mult_d12,interpretation-mappings,
    ( mult("d12","d0") = "d12"
    & mult("d12","d1") = "d13"
    & mult("d12","d2") = "d14"
    & mult("d12","d3") = "d10"
    & mult("d12","d4") = "d11"
    & mult("d12","d5") = "d3"
    & mult("d12","d6") = "d2"
    & mult("d12","d7") = "d1"
    & mult("d12","d8") = "d0"
    & mult("d12","d9") = "d4"
    & mult("d12","d10") = "d9"
    & mult("d12","d11") = "d6"
    & mult("d12","d12") = "d8"
    & mult("d12","d13") = "d5"
    & mult("d12","d14") = "d7" ) ).

fof(interp_mult_d13,interpretation-mappings,
    ( mult("d13","d0") = "d13"
    & mult("d13","d1") = "d14"
    & mult("d13","d2") = "d10"
    & mult("d13","d3") = "d11"
    & mult("d13","d4") = "d12"
    & mult("d13","d5") = "d2"
    & mult("d13","d6") = "d1"
    & mult("d13","d7") = "d0"
    & mult("d13","d8") = "d4"
    & mult("d13","d9") = "d3"
    & mult("d13","d10") = "d6"
    & mult("d13","d11") = "d8"
    & mult("d13","d12") = "d5"
    & mult("d13","d13") = "d7"
    & mult("d13","d14") = "d9" ) ).

fof(interp_mult_d14,interpretation-mappings,
    ( mult("d14","d0") = "d14"
    & mult("d14","d1") = "d10"
    & mult("d14","d2") = "d11"
    & mult("d14","d3") = "d12"
    & mult("d14","d4") = "d13"
    & mult("d14","d5") = "d1"
    & mult("d14","d6") = "d0"
    & mult("d14","d7") = "d4"
    & mult("d14","d8") = "d3"
    & mult("d14","d9") = "d2"
    & mult("d14","d10") = "d8"
    & mult("d14","d11") = "d5"
    & mult("d14","d12") = "d7"
    & mult("d14","d13") = "d9"
    & mult("d14","d14") = "d6" ) ).

fof(interp_s_d0,interpretation-mappings,
    ( s("d0") = "d0" ) ).

fof(interp_s_d1,interpretation-mappings,
    ( s("d1") = "d3" ) ).

fof(interp_s_d2,interpretation-mappings,
    ( s("d2") = "d1" ) ).

fof(interp_s_d3,interpretation-mappings,
    ( s("d3") = "d4" ) ).

fof(interp_s_d4,interpretation-mappings,
    ( s("d4") = "d2" ) ).

fof(interp_s_d5,interpretation-mappings,
    ( s("d5") = "d10" ) ).

fof(interp_s_d6,interpretation-mappings,
    ( s("d6") = "d14" ) ).

fof(interp_s_d7,interpretation-mappings,
    ( s("d7") = "d13" ) ).

fof(interp_s_d8,interpretation-mappings,
    ( s("d8") = "d12" ) ).

fof(interp_s_d9,interpretation-mappings,
    ( s("d9") = "d11" ) ).

fof(interp_s_d10,interpretation-mappings,
    ( s("d10") = "d5" ) ).

fof(interp_s_d11,interpretation-mappings,
    ( s("d11") = "d9" ) ).

fof(interp_s_d12,interpretation-mappings,
    ( s("d12") = "d8" ) ).

fof(interp_s_d13,interpretation-mappings,
    ( s("d13") = "d7" ) ).

fof(interp_s_d14,interpretation-mappings,
    ( s("d14") = "d6" ) ).

fof(interp_unit,interpretation-mappings,
    ( unit = "d0" ) ).
% SZS output end FiniteModel for GRP739-1
%------------------------------------------------------------------------------
