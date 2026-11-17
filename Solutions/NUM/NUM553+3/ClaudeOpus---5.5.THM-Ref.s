%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM553+3 : TPTP v10.0.0. Released v4.0.0.
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
%            specific calculus rule). Notes: same file
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for NUM553+3
% SZS output start Refutation for NUM553+3
fof(mCardDiff, axiom, (! [W0] : (aSet0(W0) => (! [W1] : ((isFinite0(W0) & aElementOf0(W1,W0)) => szszuzczcdt0(sbrdtbr0(sdtmndt0(W0,W1))) = sbrdtbr0(W0))))), file('Problems/NUM/NUM553+3.p',mCardDiff)).
fof(mCardCons, axiom, (! [W0] : ((aSet0(W0) & isFinite0(W0)) => (! [W1] : (aElement0(W1) => (~ aElementOf0(W1,W0) => sbrdtbr0(sdtpldt0(W0,W1)) = szszuzczcdt0(sbrdtbr0(W0))))))), file('Problems/NUM/NUM553+3.p',mCardCons)).
fof(mFDiffSet, axiom, (! [W0] : (aElement0(W0) => (! [W1] : ((aSet0(W1) & isFinite0(W1)) => isFinite0(sdtmndt0(W1,W0)))))), file('Problems/NUM/NUM553+3.p',mFDiffSet)).
fof(mDefDiff, definition, (! [W0,W1] : ((aSet0(W0) & aElement0(W1)) => (! [W2] : (W2 = sdtmndt0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aElement0(W3) & aElementOf0(W3,W0) & W3 != W1)))))))), file('Problems/NUM/NUM553+3.p',mDefDiff)).
fof(mEOfElem, axiom, (! [W0] : (aSet0(W0) => (! [W1] : (aElementOf0(W1,W0) => aElement0(W1))))), file('Problems/NUM/NUM553+3.p',mEOfElem)).
fof(mDefCons, definition, (! [W0,W1] : ((aSet0(W0) & aElement0(W1)) => (! [W2] : (W2 = sdtpldt0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aElement0(W3) & (aElementOf0(W3,W0) | W3 = W1))))))))), file('Problems/NUM/NUM553+3.p',mDefCons)).
fof(mDefSub, definition, (! [W0] : (aSet0(W0) => (! [W1] : (aSubsetOf0(W1,W0) <=> (aSet0(W1) & (! [W2] : (aElementOf0(W2,W1) => aElementOf0(W2,W0)))))))), file('Problems/NUM/NUM553+3.p',mDefSub)).
fof(mDefSel, definition, (! [W0,W1] : ((aSet0(W0) & aElementOf0(W1,szNzAzT0)) => (! [W2] : (W2 = slbdtsldtrb0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aSubsetOf0(W3,W0) & sbrdtbr0(W3) = W1)))))))), file('Problems/NUM/NUM553+3.p',mDefSel)).
fof(m__2227, hypothesis, (aSet0(slbdtsldtrb0(xS,xk)) & (! [W0] : ((aElementOf0(W0,slbdtsldtrb0(xS,xk)) => (aSet0(W0) & (! [W1] : (aElementOf0(W1,W0) => aElementOf0(W1,xS))) & aSubsetOf0(W0,xS) & sbrdtbr0(W0) = xk)) & ((((aSet0(W0) & (! [W1] : (aElementOf0(W1,W0) => aElementOf0(W1,xS)))) | aSubsetOf0(W0,xS)) & sbrdtbr0(W0) = xk) => aElementOf0(W0,slbdtsldtrb0(xS,xk))))) & aSet0(slbdtsldtrb0(xT,xk)) & (! [W0] : ((aElementOf0(W0,slbdtsldtrb0(xT,xk)) => (aSet0(W0) & (! [W1] : (aElementOf0(W1,W0) => aElementOf0(W1,xT))) & aSubsetOf0(W0,xT) & sbrdtbr0(W0) = xk)) & ((((aSet0(W0) & (! [W1] : (aElementOf0(W1,W0) => aElementOf0(W1,xT)))) | aSubsetOf0(W0,xT)) & sbrdtbr0(W0) = xk) => aElementOf0(W0,slbdtsldtrb0(xT,xk))))) & (! [W0] : (aElementOf0(W0,slbdtsldtrb0(xS,xk)) => aElementOf0(W0,slbdtsldtrb0(xT,xk)))) & aSubsetOf0(slbdtsldtrb0(xS,xk),slbdtsldtrb0(xT,xk)) & ~ (((! [W0] : ((aElementOf0(W0,slbdtsldtrb0(xS,xk)) => (aSet0(W0) & (! [W1] : (aElementOf0(W1,W0) => aElementOf0(W1,xS))) & aSubsetOf0(W0,xS) & sbrdtbr0(W0) = xk)) & ((((aSet0(W0) & (! [W1] : (aElementOf0(W1,W0) => aElementOf0(W1,xS)))) | aSubsetOf0(W0,xS)) & sbrdtbr0(W0) = xk) => aElementOf0(W0,slbdtsldtrb0(xS,xk))))) => (~ ((? [W0] : aElementOf0(W0,slbdtsldtrb0(xS,xk)))) | slbdtsldtrb0(xS,xk) = slcrc0)))), file('Problems/NUM/NUM553+3.p',m__2227)).
fof(m__2202, hypothesis, aElementOf0(xk,szNzAzT0), file('Problems/NUM/NUM553+3.p',m__2202)).
fof(m__2202_02, hypothesis, (aSet0(xS) & aSet0(xT) & xk != sz00), file('Problems/NUM/NUM553+3.p',m__2202_02)).
fof(m__2270, hypothesis, (aSet0(xQ) & (! [W0] : (aElementOf0(W0,xQ) => aElementOf0(W0,xS))) & aSubsetOf0(xQ,xS) & sbrdtbr0(xQ) = xk & aElementOf0(xQ,slbdtsldtrb0(xS,xk))), file('Problems/NUM/NUM553+3.p',m__2270)).
fof(m__2256, hypothesis, aElementOf0(xx,xS), file('Problems/NUM/NUM553+3.p',m__2256)).
fof(m__2291, hypothesis, (aSet0(xQ) & isFinite0(xQ) & sbrdtbr0(xQ) = xk), file('Problems/NUM/NUM553+3.p',m__2291)).
fof(m__2304, hypothesis, (aElement0(xy) & aElementOf0(xy,xQ)), file('Problems/NUM/NUM553+3.p',m__2304)).
fof(m__2323, hypothesis, ~ aElementOf0(xx,xQ), file('Problems/NUM/NUM553+3.p',m__2323)).
fof(m__, conjecture, aElementOf0(xx,xT), file('Problems/NUM/NUM553+3.p',m__)).
fof(m___neg, negated_conjecture, ~ (aElementOf0(xx,xT)), inference(negate_conjecture,[status(cth)],[m__])).
fof(s5, plain, (! [A,X,Y] : ((aSet0(A) & isFinite0(A) & aElementOf0(Y,A) & aElement0(X) & ~ aElementOf0(X,A)) => sbrdtbr0(sdtpldt0(sdtmndt0(A,Y),X)) = sbrdtbr0(A))), inference(lemma,[status(thm)],[mCardDiff,mCardCons,mFDiffSet,mDefDiff,mEOfElem])).
fof(s6a, plain, (! [A,X,Y] : ((aSet0(A) & aElement0(Y) & aElement0(X)) => (aSet0(sdtmndt0(A,Y)) & aSet0(sdtpldt0(sdtmndt0(A,Y),X))))), inference(lemma,[status(thm)],[mDefDiff,mDefCons])).
fof(s6b, plain, (! [A,X,Y,Z] : ((aSet0(A) & aElement0(Y) & aElement0(X) & aElementOf0(Z,sdtpldt0(sdtmndt0(A,Y),X))) => (aElementOf0(Z,A) | Z = X))), inference(lemma,[status(thm)],[mDefDiff,mDefCons,s6a])).
fof(s6, plain, (! [A,X,Y,W] : ((aSet0(A) & aElementOf0(Y,A) & aElement0(X) & aSubsetOf0(A,W) & aSet0(W) & aElementOf0(X,W)) => aSubsetOf0(sdtpldt0(sdtmndt0(A,Y),X),W))), inference(lemma,[status(thm)],[s6a,s6b,mDefSub,mEOfElem])).
fof(s7, plain, (! [A,X,Y] : ((aSet0(A) & aElementOf0(Y,A) & aElement0(X)) => aElementOf0(X,sdtpldt0(sdtmndt0(A,Y),X)))), inference(lemma,[status(thm)],[mDefCons,mDefDiff,mEOfElem])).
fof(s8, plain, (! [B] : ((aSubsetOf0(B,xS) & sbrdtbr0(B) = xk) => aSubsetOf0(B,xT))), inference(lemma,[status(thm)],[mDefSel,m__2227,mDefSub,m__2202,m__2202_02])).
fof(q1, plain, (aSubsetOf0(xQ,xS) & aElement0(xx)), inference(lemma,[status(thm)],[m__2270,m__2256,mDefSel,mEOfElem,m__2202,m__2202_02])).
fof(q2, plain, (sbrdtbr0(sdtpldt0(sdtmndt0(xQ,xy),xx)) = xk & aSubsetOf0(sdtpldt0(sdtmndt0(xQ,xy),xx),xS)), inference(lemma,[status(thm)],[s5,s6,q1,m__2291,m__2304,m__2323,m__2256,m__2202_02])).
fof(done, plain, $false, inference(lemma,[status(thm)],[q2,s8,s7,m___neg,mDefSub,m__2291,m__2304,q1,m__2202_02])).
% SZS output end Refutation for NUM553+3
%------------------------------------------------------------------------------
