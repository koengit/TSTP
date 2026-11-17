%------------------------------------------------------------------------------
% File     : ClaudeOpus---5.5
% Problem  : NUM608+1 : TPTP v10.0.0. Released v4.0.0.
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
%            specific calculus rule). Notes: core step of infinite Ramsey; 4 iterations
% Checking : GDV (TPTP World derivation verifier, e.g. via SystemOnTSTP) with an ATP such as Vampire
%            5.1 for the lemma steps; parents of each step are listed in its inference record.
%            Definition steps (role definition) introduce fresh predicate symbols and are
%            conservative.
%------------------------------------------------------------------------------
% SZS status Theorem for NUM608+1
% SZS output start Refutation for NUM608+1
fof(mDefMin, definition, (! [W0] : ((aSubsetOf0(W0,szNzAzT0) & W0 != slcrc0) => (! [W1] : (W1 = szmzizndt0(W0) <=> (aElementOf0(W1,W0) & (! [W2] : (aElementOf0(W2,W0) => sdtlseqdt0(W1,W2)))))))), file('Problems/NUM/NUM608+1.p',mDefMin)).
fof(m__5106, hypothesis, aSubsetOf0(xQ,szNzAzT0), file('Problems/NUM/NUM608+1.p',m__5106)).
fof(m__5093, hypothesis, (aSubsetOf0(xQ,xO) & xQ != slcrc0), file('Problems/NUM/NUM608+1.p',m__5093)).
fof(m__4982, hypothesis, (! [W0] : (aElementOf0(W0,xO) => (? [W1] : (aElementOf0(W1,szNzAzT0) & aElementOf0(W1,sdtlbdtrb0(xd,szDzizrdt0(xd))) & sdtlpdtrp0(xe,W1) = W0)))), file('Problems/NUM/NUM608+1.p',m__4982)).
fof(mDefSub, definition, (! [W0] : (aSet0(W0) => (! [W1] : (aSubsetOf0(W1,W0) <=> (aSet0(W1) & (! [W2] : (aElementOf0(W2,W1) => aElementOf0(W2,W0)))))))), file('Problems/NUM/NUM608+1.p',mDefSub)).
fof(m__4891, hypothesis, (aSet0(xO) & xO = sdtlcdtrc0(xe,sdtlbdtrb0(xd,szDzizrdt0(xd)))), file('Problems/NUM/NUM608+1.p',m__4891)).
fof(m__4908, hypothesis, (aSet0(xO) & isCountable0(xO)), file('Problems/NUM/NUM608+1.p',m__4908)).
fof(mDefPtt, definition, (! [W0,W1] : ((aFunction0(W0) & aElement0(W1)) => (! [W2] : (W2 = sdtlbdtrb0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aElementOf0(W3,szDzozmdt0(W0)) & sdtlpdtrp0(W0,W3) = W1)))))))), file('Problems/NUM/NUM608+1.p',mDefPtt)).
fof(m__4854, hypothesis, (aElementOf0(szDzizrdt0(xd),xT) & isCountable0(sdtlbdtrb0(xd,szDzizrdt0(xd)))), file('Problems/NUM/NUM608+1.p',m__4854)).
fof(m__4730, hypothesis, (aFunction0(xd) & szDzozmdt0(xd) = szNzAzT0 & (! [W0] : (aElementOf0(W0,szNzAzT0) => (! [W1] : ((aSet0(W1) & aElementOf0(W1,slbdtsldtrb0(sdtlpdtrp0(xN,szszuzczcdt0(W0)),xk))) => sdtlpdtrp0(xd,W0) = sdtlpdtrp0(sdtlpdtrp0(xC,W0),W1)))))), file('Problems/NUM/NUM608+1.p',m__4730)).
fof(mEOfElem, axiom, (! [W0] : (aSet0(W0) => (! [W1] : (aElementOf0(W1,W0) => aElement0(W1))))), file('Problems/NUM/NUM608+1.p',mEOfElem)).
fof(m__3291, hypothesis, (aSet0(xT) & isFinite0(xT)), file('Problems/NUM/NUM608+1.p',m__3291)).
fof(m__3671, hypothesis, (! [W0] : (aElementOf0(W0,szNzAzT0) => (aSubsetOf0(sdtlpdtrp0(xN,W0),szNzAzT0) & isCountable0(sdtlpdtrp0(xN,W0))))), file('Problems/NUM/NUM608+1.p',m__3671)).
fof(mCountNFin_01, axiom, (! [W0] : ((aSet0(W0) & isCountable0(W0)) => W0 != slcrc0)), file('Problems/NUM/NUM608+1.p',mCountNFin_01)).
fof(mNATSet, axiom, (aSet0(szNzAzT0) & isCountable0(szNzAzT0)), file('Problems/NUM/NUM608+1.p',mNATSet)).
fof(m__4660, hypothesis, (aFunction0(xe) & szDzozmdt0(xe) = szNzAzT0 & (! [W0] : (aElementOf0(W0,szNzAzT0) => sdtlpdtrp0(xe,W0) = szmzizndt0(sdtlpdtrp0(xN,W0))))), file('Problems/NUM/NUM608+1.p',m__4660)).
fof(m__3754, hypothesis, (! [W0,W1] : ((aElementOf0(W0,szNzAzT0) & aElementOf0(W1,szNzAzT0)) => (sdtlseqdt0(W1,W0) => aSubsetOf0(sdtlpdtrp0(xN,W0),sdtlpdtrp0(xN,W1))))), file('Problems/NUM/NUM608+1.p',m__3754)).
fof(mLessASymm, axiom, (! [W0,W1] : ((aElementOf0(W0,szNzAzT0) & aElementOf0(W1,szNzAzT0)) => ((sdtlseqdt0(W0,W1) & sdtlseqdt0(W1,W0)) => W0 = W1))), file('Problems/NUM/NUM608+1.p',mLessASymm)).
fof(m__3821, hypothesis, (! [W0,W1] : ((aElementOf0(W0,szNzAzT0) & aElementOf0(W1,szNzAzT0) & W0 != W1) => szmzizndt0(sdtlpdtrp0(xN,W0)) != szmzizndt0(sdtlpdtrp0(xN,W1)))), file('Problems/NUM/NUM608+1.p',m__3821)).
fof(mSuccNum, axiom, (! [W0] : (aElementOf0(W0,szNzAzT0) => (aElementOf0(szszuzczcdt0(W0),szNzAzT0) & szszuzczcdt0(W0) != sz00))), file('Problems/NUM/NUM608+1.p',mSuccNum)).
fof(mLessTotal, axiom, (! [W0,W1] : ((aElementOf0(W0,szNzAzT0) & aElementOf0(W1,szNzAzT0)) => (sdtlseqdt0(W0,W1) | sdtlseqdt0(szszuzczcdt0(W1),W0)))), file('Problems/NUM/NUM608+1.p',mLessTotal)).
fof(m__5078, hypothesis, aElementOf0(xQ,slbdtsldtrb0(xO,xK)), file('Problems/NUM/NUM608+1.p',m__5078)).
fof(mDefSel, definition, (! [W0,W1] : ((aSet0(W0) & aElementOf0(W1,szNzAzT0)) => (! [W2] : (W2 = slbdtsldtrb0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aSubsetOf0(W3,W0) & sbrdtbr0(W3) = W1)))))))), file('Problems/NUM/NUM608+1.p',mDefSel)).
fof(mCardNum, axiom, (! [W0] : (aSet0(W0) => (aElementOf0(sbrdtbr0(W0),szNzAzT0) <=> isFinite0(W0)))), file('Problems/NUM/NUM608+1.p',mCardNum)).
fof(m__3418, hypothesis, aElementOf0(xK,szNzAzT0), file('Problems/NUM/NUM608+1.p',m__3418)).
fof(mCardDiff, axiom, (! [W0] : (aSet0(W0) => (! [W1] : ((isFinite0(W0) & aElementOf0(W1,W0)) => szszuzczcdt0(sbrdtbr0(sdtmndt0(W0,W1))) = sbrdtbr0(W0))))), file('Problems/NUM/NUM608+1.p',mCardDiff)).
fof(mSuccEquSucc, axiom, (! [W0,W1] : ((aElementOf0(W0,szNzAzT0) & aElementOf0(W1,szNzAzT0)) => (szszuzczcdt0(W0) = szszuzczcdt0(W1) => W0 = W1))), file('Problems/NUM/NUM608+1.p',mSuccEquSucc)).
fof(m__3533, hypothesis, (aElementOf0(xk,szNzAzT0) & szszuzczcdt0(xk) = xK), file('Problems/NUM/NUM608+1.p',m__3533)).
fof(mFDiffSet, axiom, (! [W0] : (aElement0(W0) => (! [W1] : ((aSet0(W1) & isFinite0(W1)) => isFinite0(sdtmndt0(W1,W0)))))), file('Problems/NUM/NUM608+1.p',mFDiffSet)).
fof(mDefDiff, definition, (! [W0,W1] : ((aSet0(W0) & aElement0(W1)) => (! [W2] : (W2 = sdtmndt0(W0,W1) <=> (aSet0(W2) & (! [W3] : (aElementOf0(W3,W2) <=> (aElement0(W3) & aElementOf0(W3,W0) & W3 != W1)))))))), file('Problems/NUM/NUM608+1.p',mDefDiff)).
fof(m__3623, hypothesis, (aFunction0(xN) & szDzozmdt0(xN) = szNzAzT0 & sdtlpdtrp0(xN,sz00) = xS & (! [W0] : (aElementOf0(W0,szNzAzT0) => ((aSubsetOf0(sdtlpdtrp0(xN,W0),szNzAzT0) & isCountable0(sdtlpdtrp0(xN,W0))) => (aSubsetOf0(sdtlpdtrp0(xN,szszuzczcdt0(W0)),sdtmndt0(sdtlpdtrp0(xN,W0),szmzizndt0(sdtlpdtrp0(xN,W0)))) & isCountable0(sdtlpdtrp0(xN,szszuzczcdt0(W0)))))))), file('Problems/NUM/NUM608+1.p',m__3623)).
fof(mSubTrans, axiom, (! [W0,W1,W2] : ((aSet0(W0) & aSet0(W1) & aSet0(W2)) => ((aSubsetOf0(W0,W1) & aSubsetOf0(W1,W2)) => aSubsetOf0(W0,W2)))), file('Problems/NUM/NUM608+1.p',mSubTrans)).
fof(m__4151, hypothesis, (aFunction0(xC) & szDzozmdt0(xC) = szNzAzT0 & (! [W0] : (aElementOf0(W0,szNzAzT0) => (aFunction0(sdtlpdtrp0(xC,W0)) & szDzozmdt0(sdtlpdtrp0(xC,W0)) = slbdtsldtrb0(sdtmndt0(sdtlpdtrp0(xN,W0),szmzizndt0(sdtlpdtrp0(xN,W0))),xk) & (! [W1] : ((aSet0(W1) & aElementOf0(W1,slbdtsldtrb0(sdtmndt0(sdtlpdtrp0(xN,W0),szmzizndt0(sdtlpdtrp0(xN,W0))),xk))) => sdtlpdtrp0(sdtlpdtrp0(xC,W0),W1) = sdtlpdtrp0(xc,sdtpldt0(W1,szmzizndt0(sdtlpdtrp0(xN,W0)))))))))), file('Problems/NUM/NUM608+1.p',m__4151)).
fof(mConsDiff, axiom, (! [W0] : (aSet0(W0) => (! [W1] : (aElementOf0(W1,W0) => sdtpldt0(sdtmndt0(W0,W1),W1) = W0)))), file('Problems/NUM/NUM608+1.p',mConsDiff)).
fof(m__, conjecture, sdtlpdtrp0(xc,xQ) = szDzizrdt0(xd), file('Problems/NUM/NUM608+1.p',m__)).
fof(m___neg, negated_conjecture, ~ (sdtlpdtrp0(xc,xQ) = szDzizrdt0(xd)), inference(negate_conjecture,[status(cth)],[m__])).
fof(u1, plain, (aElementOf0(szmzizndt0(xQ),xQ) & (! [Z] : (aElementOf0(Z,xQ) => sdtlseqdt0(szmzizndt0(xQ),Z)))), inference(lemma,[status(thm)],[mDefMin,m__5106,m__5093])).
fof(u2, plain, (? [N] : (aElementOf0(N,szNzAzT0) & aElementOf0(N,sdtlbdtrb0(xd,szDzizrdt0(xd))) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ))), inference(lemma,[status(thm)],[u1,m__4982,m__5093,mDefSub,m__4891,m__4908])).
fof(u3, plain, (! [N] : ((aElementOf0(N,szNzAzT0) & aElementOf0(N,sdtlbdtrb0(xd,szDzizrdt0(xd)))) => sdtlpdtrp0(xd,N) = szDzizrdt0(xd))), inference(lemma,[status(thm)],[mDefPtt,m__4854,m__4730,mEOfElem,m__3291])).
fof(u4b, plain, (! [N] : (aElementOf0(N,szNzAzT0) => (aSubsetOf0(sdtlpdtrp0(xN,N),szNzAzT0) & sdtlpdtrp0(xN,N) != slcrc0 & aSet0(sdtlpdtrp0(xN,N))))), inference(lemma,[status(thm)],[m__3671,mCountNFin_01,mDefSub,mNATSet])).
fof(u4d, plain, (! [N] : (aElementOf0(N,szNzAzT0) => (aElementOf0(sdtlpdtrp0(xe,N),sdtlpdtrp0(xN,N)) & aElementOf0(sdtlpdtrp0(xe,N),szNzAzT0) & (! [Z] : (aElementOf0(Z,sdtlpdtrp0(xN,N)) => sdtlseqdt0(sdtlpdtrp0(xe,N),Z)))))), inference(lemma,[status(thm)],[u4b,mDefMin,m__4660,mDefSub,mNATSet])).
fof(u4c, plain, (! [A,B] : ((aElementOf0(A,szNzAzT0) & aElementOf0(B,szNzAzT0) & sdtlseqdt0(A,B)) => sdtlseqdt0(sdtlpdtrp0(xe,A),sdtlpdtrp0(xe,B)))), inference(lemma,[status(thm)],[u4d,u4b,m__3754,mDefSub])).
fof(u4e, plain, (! [N,M] : ((aElementOf0(N,szNzAzT0) & aElementOf0(M,szNzAzT0) & sdtlseqdt0(M,N) & aElementOf0(sdtlpdtrp0(xe,M),xQ) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ)) => sdtlpdtrp0(xe,M) = sdtlpdtrp0(xe,N))), inference(lemma,[status(thm)],[u4c,u4d,u1,mLessASymm])).
fof(u4f, plain, (! [N,M] : ((aElementOf0(N,szNzAzT0) & aElementOf0(M,szNzAzT0) & M != N) => sdtlpdtrp0(xe,M) != sdtlpdtrp0(xe,N))), inference(lemma,[status(thm)],[m__3821,m__4660])).
fof(u4g, plain, (! [N,M] : ((aElementOf0(N,szNzAzT0) & aElementOf0(M,szNzAzT0) & sdtlseqdt0(szszuzczcdt0(N),M)) => aElementOf0(sdtlpdtrp0(xe,M),sdtlpdtrp0(xN,szszuzczcdt0(N))))), inference(lemma,[status(thm)],[m__3754,mSuccNum,u4d,u4b,mDefSub])).
fof(u4, plain, (! [N,M] : ((aElementOf0(N,szNzAzT0) & aElementOf0(M,szNzAzT0) & aElementOf0(sdtlpdtrp0(xe,M),xQ) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ) & M != N) => aElementOf0(sdtlpdtrp0(xe,M),sdtlpdtrp0(xN,szszuzczcdt0(N))))), inference(lemma,[status(thm)],[u4e,u4f,u4g,mLessTotal])).
fof(u6a, plain, (sbrdtbr0(xQ) = xK & isFinite0(xQ) & aSet0(xQ)), inference(lemma,[status(thm)],[m__5078,mDefSel,mCardNum,m__3418,m__4908,mDefSub])).
fof(u6b, plain, (sbrdtbr0(sdtmndt0(xQ,szmzizndt0(xQ))) = xk & aSet0(sdtmndt0(xQ,szmzizndt0(xQ))) & isFinite0(sdtmndt0(xQ,szmzizndt0(xQ)))), inference(lemma,[status(thm)],[u6a,u1,mCardDiff,mCardNum,mSuccEquSucc,m__3533,mFDiffSet,mDefDiff,mEOfElem])).
fof(u5a, plain, (! [Z] : (aElementOf0(Z,sdtmndt0(xQ,szmzizndt0(xQ))) => (aElementOf0(Z,xQ) & Z != szmzizndt0(xQ)))), inference(lemma,[status(thm)],[mDefDiff,u1,mEOfElem,u6a])).
fof(u5b, plain, (! [Z] : (aElementOf0(Z,xQ) => (? [M] : (aElementOf0(M,szNzAzT0) & sdtlpdtrp0(xe,M) = Z)))), inference(lemma,[status(thm)],[m__4982,m__5093,mDefSub,m__4891,m__4908])).
fof(u5, plain, (! [N] : ((aElementOf0(N,szNzAzT0) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ)) => aSubsetOf0(sdtmndt0(xQ,szmzizndt0(xQ)),sdtlpdtrp0(xN,szszuzczcdt0(N))))), inference(lemma,[status(thm)],[u5a,u5b,u4,u4b,mDefSub,mSuccNum,u6b,u1])).
fof(u6, plain, (! [N] : ((aElementOf0(N,szNzAzT0) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ)) => aElementOf0(sdtmndt0(xQ,szmzizndt0(xQ)),slbdtsldtrb0(sdtlpdtrp0(xN,szszuzczcdt0(N)),xk)))), inference(lemma,[status(thm)],[u5,u6b,mDefSel,u4b,mSuccNum,m__3533])).
fof(u7a, plain, (! [N] : (aElementOf0(N,szNzAzT0) => aSubsetOf0(sdtlpdtrp0(xN,szszuzczcdt0(N)),sdtmndt0(sdtlpdtrp0(xN,N),szmzizndt0(sdtlpdtrp0(xN,N)))))), inference(lemma,[status(thm)],[m__3623,m__3671])).
fof(u7b, plain, (! [N] : ((aElementOf0(N,szNzAzT0) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ)) => aElementOf0(sdtmndt0(xQ,szmzizndt0(xQ)),slbdtsldtrb0(sdtmndt0(sdtlpdtrp0(xN,N),szmzizndt0(sdtlpdtrp0(xN,N))),xk)))), inference(lemma,[status(thm)],[u6,u6b,u7a,mDefSel,mDefSub,mSubTrans,u4b,mSuccNum,m__3533,mDefDiff,mEOfElem,u4d,m__4660])).
fof(u7c, plain, (! [N] : ((aElementOf0(N,szNzAzT0) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ)) => sdtlpdtrp0(xd,N) = sdtlpdtrp0(sdtlpdtrp0(xC,N),sdtmndt0(xQ,szmzizndt0(xQ))))), inference(lemma,[status(thm)],[m__4730,u6,u6b])).
fof(u7d, plain, (! [N] : ((aElementOf0(N,szNzAzT0) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ)) => sdtlpdtrp0(sdtlpdtrp0(xC,N),sdtmndt0(xQ,szmzizndt0(xQ))) = sdtlpdtrp0(xc,sdtpldt0(sdtmndt0(xQ,szmzizndt0(xQ)),szmzizndt0(sdtlpdtrp0(xN,N)))))), inference(lemma,[status(thm)],[m__4151,u7b,u6b])).
fof(u7, plain, (! [N] : ((aElementOf0(N,szNzAzT0) & sdtlpdtrp0(xe,N) = szmzizndt0(xQ)) => sdtlpdtrp0(xd,N) = sdtlpdtrp0(xc,sdtpldt0(sdtmndt0(xQ,szmzizndt0(xQ)),szmzizndt0(xQ))))), inference(lemma,[status(thm)],[u7c,u7d,m__4660])).
fof(u8, plain, sdtpldt0(sdtmndt0(xQ,szmzizndt0(xQ)),szmzizndt0(xQ)) = xQ, inference(lemma,[status(thm)],[mConsDiff,u1,u6a])).
fof(done, plain, $false, inference(lemma,[status(thm)],[u2,u3,u7,u8,m___neg])).
% SZS output end Refutation for NUM608+1
%------------------------------------------------------------------------------
