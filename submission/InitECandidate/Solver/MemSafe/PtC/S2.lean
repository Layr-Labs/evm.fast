import InitECandidate.Solver.MemSafe.PtC.W1

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem cpt_c2a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} (hQT : LocIns QT) (C : Cx1 E En S rp rl buf n CV)
    (hk : ∀ (w : BitVec 64) (En' : Env) (S' : FS), Cx2 E En' S' rp rl buf n CV w →
      CW' (PA E En' S') ptS14 (cbd ptS14) QT) :
    CW' (PA E En S) ptS7 (cbd ptS7) QT := by
  unfold ptS7
  refine cw_decAny (locIns_resIns hQT _) tab_tx_chain_id (by simp) rfl cid_fin rfl
    (fun g ty h => (C.gl g ty h).1) ?_
  intro v hsh
  unfold ptS8
  refine cw_seqN (P1 := PA E (En.set (nm "cid") v) S) ?_ ?_
  · unfold ptS10 ptS225
    exact hguard2
  unfold ptS9
  refine cw_decAllocA (locIns_resIns hQT _) (e := cw 24) (n := BitVec.ofNat 64 24) (ty := tB24)
    (fun s _ => evI_cw s 24) C.gl plain_tB24 tags_tB24 rfl b24_slot (by decide) (by decide) (by decide) ?_
  intro w
  have hn24 : (BitVec.ofNat 64 24).toNat = 24 := rfl
  simp only [hn24]
  unfold ptS11
  have C1 : Cx1 E ((En.set (nm "cid") v).set (nm "sender") (.val (.word w)))
      (addF S [Fct.obj w tB24 24, Fct.bufok0 w 24,
        Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + 24 ≤ heapEnd)]) rp rl buf n CV :=
    cx1_ext (cx1_set C (by decide) (by decide) (by decide) (by simp [TRK])) (by decide) (by decide) (by decide) (by simp [TRK])
      (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> exact ⟨fun g ty => by simp, fun a v => by simp, fun y => by simp [Fct.reads]⟩)
  have C2 : Cx2 E ((En.set (nm "cid") v).set (nm "sender") (.val (.word w)))
      (addF S [Fct.obj w tB24 24, Fct.bufok0 w 24,
        Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + 24 ≤ heapEnd)]) rp rl buf n CV w :=
    ⟨C1, env_set_self _ _ _, Or.inr (by simp), Or.inr (by simp)⟩
  refine cw_seqN (hn_callC tab_recover_sender (callOK_recover C2)) ?_
  unfold ptS12
  refine cw_seqN hn_skip ?_
  exact hk w _ _ C2

end InitECandidate.Solver.MemSafe.PtC
