import InitECandidate.Solver.Band7.Bmi2

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# `build_mpt_indexed`: the whole body under the ghost activation (Band7)
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

def bRoot : Nat := 1 + Band2.mrB + 0
def bTailC : Nat := (1 + 0 + 0) + 0
def bRest : Nat := bRoot + bTailC
def bK3 : Nat := bLoop + bRest
def bK2 : Nat := 1 + 3 + bK3
def bTop : Nat := 1 + 0 + bK2

theorem cc_mpt_new : CalleeCost σ guestCtx (nm "mpt_new") 3 := Wire.calleeCost_guest (by rfl)
theorem cc_heap_mark : CalleeCost σ guestCtx (nm "heap_mark") 0 := Wire.calleeCost_guest (by rfl)
theorem cc_heap_release : CalleeCost σ guestCtx (nm "heap_release") 0 := Wire.calleeCost_guest (by rfl)

theorem c_tail : Cost σ guestCtx bmiTail bTailC :=
  cost_seq (cost_call cc_heap_release (by intro _ _ _ _ h; cases h)) (cost_return _)

/-- `mpt_root(m, out); heap_release(mark); return 0` after the loop. -/
theorem c_rest {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) {M MK A N OUT : BitVec 64}
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32) :
    Inv.CostP σ guestCtx (GI a (Lloop M MK A N OUT) (EL a A N M)) (.seq bmiRoot bmiTail) bRest := by
  refine Inv.costP_seq (R := fun _ => True) ?_ (fun s _ _ _ _ => trivial) (Inv.costP_of_cost c_tail)
  unfold bmiRoot
  refine Inv.costP_callD (mr8_condCost (σ := σ)) ?_
  rintro s hs ⟨⟨I, hL⟩, Γ, q, he, hh, hsc, hE⟩ vs hvs callee
  have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
  have hev : evs s [lv (nm "m"), lv (nm "out")] = some [.val (.word M), .val (.word OUT)] :=
    evs_cons (lv_ev hL (by simp [Trie.kvB])) (evs_cons (lv_ev hL (by simp [Trie.kvB])) evs_nil)
  rw [hev] at hvs
  cases hvs
  have hF := Rec.foldOK_guestR (σ := σ)
  refine ⟨Γ, q, MemSafe.G_congr hF.hH rfl rfl rfl rfl hG, (AllocImpl.ptrsOf_congr rfl).trans hh.2.1,
    ?_, M, OUT, rfl, ?_⟩
  · have := argsOK_ab (v0 := .val (.word M)) (hCb ▸ hOutB s Γ q hh)
    exact this
  · exact hE.1.1.2.2.2.2.2

/-- `var i = 0; while ...; mpt_root ...; heap_release ...; return 0`. -/
theorem c_k3 {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {M MK A N OUT : BitVec 64}
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32) :
    Inv.CostP σ guestCtx (GI a (Trie.LV (Trie.kvB M MK A N OUT)) (EL a A N M)) bmiK3 bK3 := by
  unfold bmiK3 bK3
  refine cq_dec ha.hH (L1 := Lloop M MK A N OUT) (fun s _ hL v hv => ?_) ?_
  · rw [ev_cw] at hv
    cases hv
    exact ⟨_, lv_new hL (kvB_fresh (Or.inl rfl)) _⟩
  · refine Inv.costP_seq (R := GI a (Lloop M MK A N OUT) (EL a A N M)) (c_loop ha haC hCb haH hgr hcI) ?_
      (c_rest ha haC hCb haH hOutB)
    intro s hs hp ht hr
    have := MemSafe.Frames.hoare_of_hoareG (bmi_loop ha haC hCb haH hgr hcI (M := M) (MK := MK) (A := A)
      (N := N) (OUT := OUT) (Rv := fun _ _ _ _ => True)) s hs hp ht
    rw [hr] at this
    exact this.1 rfl

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.c_k3
