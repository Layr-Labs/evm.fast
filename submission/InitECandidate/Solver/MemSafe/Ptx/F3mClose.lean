import InitECandidate.Solver.MemSafe.Ptx.PtZ2
import InitECandidate.Solver.MemSafe.Entry2.Final
import InitECandidate.Solver.MemSafe.Rec.TxEncFresh
import InitECandidate.Solver.Band6.UbCost
import InitECandidate.Solver.MemSafe.Rcpt.EncOut

/-!
# F3m: `process_transaction`'s hypotheses from main's theorems

* `hypPmM_closed`: `process_message`'s post from `Entry2.pm_post_closed` (main's `PmFin` gives F3's `PmFinL` and `JrNZ`);
* `hypCfL_closed`: `create_finish` from `Frames.cf_guestR` (its footprint `PWtopM` misses the message objects, and every
  log-list type is a message type, `lstTy_msgTys`);
* `hypEncTx_closed`: `encode_transaction` from `Rec.funSpec_encode_transaction_out` (`EncOutT` is `EncOut`);
* `hypRcpt_closed`: `encode_receipt` from `Rcpt.funSpec_encode_receipt_out` (package Rcf);
* `Bal.HGS` is `Band6.hgs_R`.
`pt_funSpec_final`: `process_transaction`'s post with no hypothesis left.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem hypPmM_closed {M : Nat} (hM : M < 2 ^ 64) : HypPmM σ M :=
  FunSpec.mono (Entry2.pm_post_closed hM) fun vs s r t hR Γ hG hP v hv => by
    obtain ⟨msg, hvs, hfo⟩ := hP
    obtain ⟨child, hv', hfin⟩ := hR Γ hG ⟨msg, hvs, hfo⟩ v hv
    exact ⟨child, msg, hvs, hv', pmFinL_of_pmFin hfin, hfin.2.2.2.2⟩

theorem hypCfL_closed : HypCfL σ :=
  FunSpec.mono Frames.cf_guestR fun vs s r t hR hg hna Γ hG hargs hpre => by
    obtain ⟨Γ', p, p', hc, hq⟩ := hR hg hna Γ hG hargs hpre
    refine ⟨Γ', p, p', Frames.sumCore_pwM hc ?_, hq⟩
    intro a ha
    rcases ha with ⟨hp, hpw⟩ | hn
    · exact Or.inl ⟨hp, hpw, fun o ho hlt hin => hpw.2 o ho (lstTy_msgTys hlt) hin⟩
    · exact Or.inr hn

theorem hypEncTx_closed : HypEncTx σ :=
  FunSpec.mono Rec.funSpec_encode_transaction_out fun _ _ _ _ h => h

theorem hypRcpt_closed : HypRcpt σ :=
  FunSpec.mono Rcpt.funSpec_encode_receipt_out fun _ _ _ _ h v hv Γ h0 p logs hG hp hB h8 hb hle hla hLK =>
    h v hv Γ h0 p logs hG hp hB h8 hb hle hla hLK

/-- **`process_transaction`'s post**, with `encode_receipt`'s `EncOut` form (`HypRcpt`) as hypothesis. -/
theorem pt_funSpec_closed (hR : HypRcpt σ) :
    FunSpec σ guestCtx (nm "process_transaction") (PtR2 (2 ^ 24 + 2)) :=
  pt_funSpec (hypPmM_closed (by norm_num)) hypCfL_closed hR Band6.hgs_R hypEncTx_closed

/-- **`process_transaction`'s post, closed** (no hypotheses). -/
theorem pt_funSpec_final : FunSpec σ guestCtx (nm "process_transaction") (PtR2 (2 ^ 24 + 2)) :=
  pt_funSpec_closed hypRcpt_closed

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.hypPmM_closed
#print axioms InitECandidate.Solver.MemSafe.Ptx.hypCfL_closed
#print axioms InitECandidate.Solver.MemSafe.Ptx.hypEncTx_closed
#print axioms InitECandidate.Solver.MemSafe.Ptx.pt_funSpec_closed
#print axioms InitECandidate.Solver.MemSafe.Ptx.hypRcpt_closed
#print axioms InitECandidate.Solver.MemSafe.Ptx.pt_funSpec_final
