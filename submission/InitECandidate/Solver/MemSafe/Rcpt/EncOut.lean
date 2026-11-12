import InitECandidate.Solver.MemSafe.Rcpt.Final
import InitECandidate.Solver.MemSafe.Aw.Rcpt
import InitECandidate.Solver.MemSafe.Rec.TxEncFresh
import InitECandidate.Solver.MemSafe.Wire.FoldR
import InitECandidate.Solver.MemSafe.Annot.DrvCfg
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes

/-!
# `encode_receipt`'s full post (`Rec.EncOutT`)

`Rcpt.funSpec_rcptFresh` (buffer, result, `ModifiesOnly`) and `Aw.awSpec_encode_receipt` (typing `Γ'`, `Below Γ' h0`)
are combined on the same run. The buffer starts at `p.hp ≥ h0`, above every object of `Γ'`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem awSpec_er_closed : Aw.AWSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "encode_receipt") []
    (fun _ _ _ => True) (fun _ _ _ _ => True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine Aw.awSpec_encode_receipt hF.hX hF.hal Aw.domBelow_guestCtx hF.hH Helpers.tagSlots_guestC Annot.drv_allocG ?_
  exact Aw.awSpec_logs_bloom hF.hX hF.hal Aw.domBelow_guestCtx hF.hH Helpers.tagSlots_guestC Annot.drv_allocG
    (Aw.awSpec_add_to_bloom hF.hX hF.hH Helpers.tagSlots_guestC Annot.drv_allocG Wire.keccak256_guestR)

theorem funSpec_encode_receipt_out : FunSpec σ guestCtx (nm "encode_receipt") (fun vs s r t => ∀ v, r = .returned v →
    ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs) (logs : BitVec 64),
      G guestC (Hooks.guestHooksR (σ := σ)) Γ s → ptrsOf s = some p → Aw.Below Γ h0 → h0 % 8 = 0 →
      heapBase ≤ h0 → h0 ≤ p.hp → argW vs 3 = some logs → LogsK Γ p s.memory h0 logs → Rec.EncOutT Γ p s t v) := by
  have H := FunSpec.and funSpec_rcptFresh (awSpec_er_closed (σ := σ))
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p logs hG hp hB h8 hb hle hla hLK
  obtain ⟨H1, H2⟩ := H vs body callee rs hl s hs hloc r hr
  obtain ⟨p', rp, rl, hp', hfl, hrl, buf, n, b8, n8, b1, b2, b3, b4, hmod⟩ :=
    H1 v hv Γ h0 p logs hG hp hB h8 hb hle hla hLK
  obtain ⟨Γ', q, hG', hq, hExt, hNF, hB', hMono, -, hpg, -⟩ := H2 v hv Γ h0 p hG hp hB h8 hb hle trivial
  have hqp : q = p' := Option.some.inj (hq.symm.trans hp')
  subst hqp
  refine ⟨Γ', q, rp, rl, hG', hq, hExt, hNF, hMono, fun g hg => hpg g hg (by simp), hfl, hrl, buf, n, b8, n8, b1, b2, b3, b4,
    fun a a1 a2 ⟨o, ho, o1, o2⟩ => ?_, hmod⟩
  have := hB' o ho
  omega

end InitECandidate.Solver.MemSafe.Rcpt

#print axioms InitECandidate.Solver.MemSafe.Rcpt.funSpec_encode_receipt_out
