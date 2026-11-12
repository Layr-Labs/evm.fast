import InitECandidate.Solver.MemSafe.Rcpt.Main2

set_option autoImplicit false

/-!
# `encode_receipt`: the end (`rlp_finish_list`, the type byte, the return)
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem hoareG_exL {ι : Type} {I : State σ → Prop} {L : ι → Locals → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ j, HoareG σ X (IPre I (L j)) c Q) : HoareG σ X (IPre I (fun m => ∃ j, L j m)) c Q :=
  hoareG_pre (P := fun s => ∃ j, IPre I (L j) s) (hoareG_ex h)
    (by rintro s hs ⟨hI, j, hj⟩; exact ⟨j, hI, hj⟩)

theorem rcpt_end (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {s : State σ} {Γ : Gam}
    {p : Ptrs} {h0 : Nat} (hK : AwOK (aOf s Γ p h0)) {logs CG : BitVec 64} {B S Fl : Nat}
    (hBp : p.hp ≤ B) (hBE : B + S + 416 ≤ heapEnd) (P3 : Nat) (hP3 : B + 12 ≤ P3)
    (hP3' : P3 ≤ B + S + 288) :
    HoareG σ X (IPre (RI (aOf s Γ p h0) Fl)
      (fun m => LK logs CG B m ∧ LW m startN (B + 1) ∧ LW m Aw.pN P3)) erEnd
      (IQ (RI (aOf s Γ p h0) Fl) (fun _ => True) (KRet B S)) := by
  have hS : IStable (RI (aOf s Γ p h0) Fl) := ri_stable hK Fl
  have hhe : heapEnd < 2 ^ 40 := by decide
  unfold erEnd
  refine hoareG_seqA (L2 := fun m => ∃ W, ((LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m wN W) ∧
      (1 ≤ W ∧ W + B + 1 ≤ P3)) ?_ ?_
  · refine hoareG_callAsA hS (isp_fin hK hC hA _) ?_ ?_
    · intro s' hs' hP vs hvs callee
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      rw [ev_lwn hP.2.2.1] at e1
      rw [ev_lwn hP.2.2.2] at e2
      cases e1
      cases e2
      refine ⟨_, _, rfl, rfl, ?_, ?_, ?_⟩ <;> rw [toNat_ofNat_lt (by omega)] <;> (try rw [toNat_ofNat_lt (by omega)])
      · show p.hp ≤ _
        omega
      · omega
      · omega
    · intro s' vs v st hL hvs hRet hval
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      rw [ev_lwn hL.2.1] at e1
      rw [ev_lwn hL.2.2] at e2
      cases e1
      cases e2
      have := hRet (BitVec.ofNat 64 (B + 1)) (BitVec.ofNat 64 P3) (by simp [argW, wordOf]) (by simp [argW, wordOf])
      subst this
      rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)]
      have hh := hdrLen_le (n := P3 - (B + 1 + 9)) (by omega)
      refine ⟨hdrLen (P3 - (B + 1 + 9)) + (P3 - (B + 1 + 9)),
        ⟨⟨lk_keep hL.1 (by decide) (by decide) (by decide), lw_keep hL.2.1 (by decide)⟩, lw_set⟩,
        by omega, by omega⟩
  refine hoareG_exL fun W => ?_
  refine hoareG_pre (P := fun t => (1 ≤ W ∧ W + B + 1 ≤ P3) ∧ IPre (RI (aOf s Γ p h0) Fl)
    (fun m => (LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m wN W) t) ?_
    (by rintro t ht ⟨hI, hL, hp⟩; exact ⟨hp, hI, hL⟩)
  refine hoareG_prop fun ⟨hW1, hW2⟩ => ?_
  refine hoareG_seqA (L2 := fun m => (LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m wN W) ?_ ?_
  · refine hoareG_iteI ?_ (hoareG_skipA (fun _ h => h))
    refine hoareG_seqA (L2 := fun m => (LK logs CG B m ∧ LW m startN (B + 1)) ∧ LW m wN W) ?_ ?_
    · refine hoareG_storeByteRI hK (fun s' _ hL w hw => ?_)
      rw [ev_sub2 (ev_lwn hL.1.2) (ev_cw _ 1)] at hw
      cases hw
      rw [toNat_subc (by rw [toNat_ofNat_lt (by omega)]; omega), toNat_ofNat_lt (by omega)]
      show p.hp ≤ _ ∧ _
      omega
    · refine hoareG_returnA hS fun s' _ hL v hv => ?_
      rw [ev_rstruct (evs_cons (ev_sub2 (ev_lwn hL.1.2) (ev_cw _ 1))
        (evs_cons (ev_add2 (ev_lwn hL.2) (ev_cw _ 1)) evs_nil))] at hv
      cases hv
      refine ⟨BitVec.ofNat 64 (B + 1) - BitVec.ofNat 64 1, BitVec.ofNat 64 W + BitVec.ofNat 64 1, rfl, ?_, ?_, ?_⟩
      · rw [toNat_subc (by rw [toNat_ofNat_lt (by omega)]; omega), toNat_ofNat_lt (by omega)]
        omega
      · rw [toNat_subc (by rw [toNat_ofNat_lt (by omega)]; omega), toNat_ofNat_lt (by omega),
          ofNat_add_ofNat', toNat_ofNat_lt (by omega)]
        omega
      · rw [ofNat_add_ofNat', toNat_ofNat_lt (by omega)]
        omega
  · refine hoareG_returnA hS fun s' _ hL v hv => ?_
    rw [ev_rstruct (evs_cons (ev_lwn hL.1.2) (evs_cons (ev_lwn hL.2) evs_nil))] at hv
    cases hv
    refine ⟨BitVec.ofNat 64 (B + 1), BitVec.ofNat 64 W, rfl, ?_, ?_, ?_⟩
    · rw [toNat_ofNat_lt (by omega)]
      omega
    · rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)]
      omega
    · rw [toNat_ofNat_lt (by omega)]
      omega

end InitECandidate.Solver.MemSafe.Rcpt
