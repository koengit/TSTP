%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM593+3 : TPTP v10.0.0. Released v4.0.0.
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
%            specific calculus rule). Notes: first (unsplit) version already works here
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for NUM593+3
% SZS output start Refutation for NUM593+3
fof(m__3671, hypothesis, (! [W0] : (aElementOf0(W0,szNzAzT0) => (aSet0(sdtlpdtrp0(xN,W0)) & (! [W1] : (aElementOf0(W1,sdtlpdtrp0(xN,W0)) => aElementOf0(W1,szNzAzT0))) & aSubsetOf0(sdtlpdtrp0(xN,W0),szNzAzT0) & isCountable0(sdtlpdtrp0(xN,W0))))), file('Problems/NUM/NUM593+3.p',m__3671)).
fof(mSuccNum, axiom, (! [W0] : (aElementOf0(W0,szNzAzT0) => (aElementOf0(szszuzczcdt0(W0),szNzAzT0) & szszuzczcdt0(W0) != sz00))), file('Problems/NUM/NUM593+3.p',mSuccNum)).
fof(mCountNFin, axiom, (! [W0] : ((aSet0(W0) & isCountable0(W0)) => ~ isFinite0(W0))), file('Problems/NUM/NUM593+3.p',mCountNFin)).
fof(mSelNSet, axiom, (! [W0] : ((aSet0(W0) & ~ isFinite0(W0)) => (! [W1] : (aElementOf0(W1,szNzAzT0) => slbdtsldtrb0(W0,W1) != slcrc0)))), file('Problems/NUM/NUM593+3.p',mSelNSet)).
fof(mDefEmp, definition, (! [W0] : (W0 = slcrc0 <=> (aSet0(W0) & ~ ((? [W1] : aElementOf0(W1,W0)))))), file('Problems/NUM/NUM593+3.p',mDefEmp)).
fof(mDefSel, definition, (! [W0,W1] : ((aSet0(W0) & aElementOf0(W1,szNzAzT0)) => (! [W2] : (W2 = slbdtsldtrb0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aSubsetOf0(W3,W0) & sbrdtbr0(W3) = W1)))))))), file('Problems/NUM/NUM593+3.p',mDefSel)).
fof(mDefSub, definition, (! [W0] : (aSet0(W0) => (! [W1] : (aSubsetOf0(W1,W0) <=> (aSet0(W1) & (! [W2] : (aElementOf0(W2,W1) => aElementOf0(W2,W0)))))))), file('Problems/NUM/NUM593+3.p',mDefSub)).
fof(m__3533, hypothesis, (aElementOf0(xk,szNzAzT0) & szszuzczcdt0(xk) = xK), file('Problems/NUM/NUM593+3.p',m__3533)).
fof(m__4618, hypothesis, (! [W0] : (aElementOf0(W0,szNzAzT0) => (? [W1] : (aElementOf0(W1,xT) & (! [W2] : ((aSet0(W2) & ((((! [W3] : (aElementOf0(W3,W2) => aElementOf0(W3,sdtlpdtrp0(xN,szszuzczcdt0(W0))))) | aSubsetOf0(W2,sdtlpdtrp0(xN,szszuzczcdt0(W0)))) & sbrdtbr0(W2) = xk) | aElementOf0(W2,slbdtsldtrb0(sdtlpdtrp0(xN,szszuzczcdt0(W0)),xk)))) => sdtlpdtrp0(sdtlpdtrp0(xC,W0),W2) = W1)))))), file('Problems/NUM/NUM593+3.p',m__4618)).
fof(m__4730, hypothesis, (aFunction0(xd) & szDzozmdt0(xd) = szNzAzT0 & (! [W0] : (aElementOf0(W0,szNzAzT0) => (! [W1] : ((aSet0(W1) & ((((! [W2] : (aElementOf0(W2,W1) => aElementOf0(W2,sdtlpdtrp0(xN,szszuzczcdt0(W0))))) | aSubsetOf0(W1,sdtlpdtrp0(xN,szszuzczcdt0(W0)))) & sbrdtbr0(W1) = xk) | aElementOf0(W1,slbdtsldtrb0(sdtlpdtrp0(xN,szszuzczcdt0(W0)),xk)))) => sdtlpdtrp0(xd,W0) = sdtlpdtrp0(sdtlpdtrp0(xC,W0),W1)))))), file('Problems/NUM/NUM593+3.p',m__4730)).
fof(mDefSImg, definition, (! [W0] : (aFunction0(W0) => (! [W1] : (aSubsetOf0(W1,szDzozmdt0(W0)) => (! [W2] : (W2 = sdtlcdtrc0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (? [W4] : (aElementOf0(W4,W1) & sdtlpdtrp0(W0,W4) = W3))))))))))), file('Problems/NUM/NUM593+3.p',mDefSImg)).
fof(mSubRefl, axiom, (! [W0] : (aSet0(W0) => aSubsetOf0(W0,W0))), file('Problems/NUM/NUM593+3.p',mSubRefl)).
fof(mDomSet, axiom, (! [W0] : (aFunction0(W0) => aSet0(szDzozmdt0(W0)))), file('Problems/NUM/NUM593+3.p',mDomSet)).
fof(m__, conjecture, ((aSet0(sdtlcdtrc0(xd,szDzozmdt0(xd))) & (! [W0] : (aElementOf0(W0,sdtlcdtrc0(xd,szDzozmdt0(xd))) <=> (? [W1] : (aElementOf0(W1,szDzozmdt0(xd)) & sdtlpdtrp0(xd,W1) = W0))))) => ((! [W0] : (aElementOf0(W0,sdtlcdtrc0(xd,szDzozmdt0(xd))) => aElementOf0(W0,xT))) | aSubsetOf0(sdtlcdtrc0(xd,szDzozmdt0(xd)),xT))), file('Problems/NUM/NUM593+3.p',m__)).
fof(m___neg, negated_conjecture, ~ (((aSet0(sdtlcdtrc0(xd,szDzozmdt0(xd))) & (! [W0] : (aElementOf0(W0,sdtlcdtrc0(xd,szDzozmdt0(xd))) <=> (? [W1] : (aElementOf0(W1,szDzozmdt0(xd)) & sdtlpdtrp0(xd,W1) = W0))))) => ((! [W0] : (aElementOf0(W0,sdtlcdtrc0(xd,szDzozmdt0(xd))) => aElementOf0(W0,xT))) | aSubsetOf0(sdtlcdtrc0(xd,szDzozmdt0(xd)),xT)))), inference(negate_conjecture,[status(cth)],[m__])).
fof(m__3291, hypothesis, (aSet0(xT) & isFinite0(xT)), file('Problems/NUM/NUM593+3.p',m__3291)).
fof(t1, plain, (! [N] : (aElementOf0(N,szNzAzT0) => (? [W] : (aSet0(W) & aElementOf0(W,slbdtsldtrb0(sdtlpdtrp0(xN,szszuzczcdt0(N)),xk)))))), inference(lemma,[status(thm)],[m__3671,mSuccNum,mCountNFin,mSelNSet,mDefEmp,mDefSel,mDefSub,m__3533])).
fof(t2, plain, (! [N] : (aElementOf0(N,szNzAzT0) => aElementOf0(sdtlpdtrp0(xd,N),xT))), inference(lemma,[status(thm)],[t1,m__4618,m__4730])).
fof(t3, plain, (! [Z] : (aElementOf0(Z,sdtlcdtrc0(xd,szDzozmdt0(xd))) => aElementOf0(Z,xT))), inference(lemma,[status(thm)],[mDefSImg,m__4730,mSubRefl,mDomSet,t2])).
fof(done, plain, $false, inference(lemma,[status(thm)],[t3,m___neg,mDefSub,m__3291,mDefSImg,m__4730,mSubRefl,mDomSet])).
% SZS output end Refutation for NUM593+3
%------------------------------------------------------------------------------
