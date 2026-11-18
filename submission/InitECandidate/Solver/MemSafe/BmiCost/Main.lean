import InitECandidate.Solver.Band7.Bmi2
import InitECandidate.Solver.MemSafe.BmiCost.ArrayBound
import InitECandidate.Solver.MemSafe.BmiCost.Loop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.MemSafe.BmiCost.Main
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

open InitECandidate.Solver.Band7
def bLoop : Nat := (InitECandidate.Solver.MemSafe.BmiCost.ArrayBound.countMax + 1) * (bBody + 1)

/-- **The loop.** -/
theorem loop_cost {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {M MK A N OUT : BitVec 64} :
    Inv.CostP σ guestCtx (GI a (fun m => ∃ I : BitVec 64, Trie.LV ((nm "i", ValueHOL.val (.word I)) :: Trie.kvB M MK A N OUT) m)
        (EL a A N M)) bmiLoop bLoop := by
  have hIN : ∀ (s : State σ) (I : BitVec 64), Trie.LV ((nm "i", ValueHOL.val (.word I)) :: Trie.kvB M MK A N OUT) s.locals →
      CondTrue s (.cmp .lower (lv (nm "i")) (lv (nm "n"))) → I.toNat < N.toNat := by
    intro s I hL hc
    exact Struct.cmp_lower_true (cmp_true' (lv_ev hL (List.mem_cons_self ..)) (lv_ev hL (by simp [Trie.kvB])) hc)
  unfold bmiLoop bLoop
  refine InitECandidate.Solver.MemSafe.BmiCost.Loop.bounded (M := InitECandidate.Solver.MemSafe.BmiCost.ArrayBound.countMax) (by decide) (i := nm "i") (E := lv (nm "n")) (body := bmiLoopBody) (fun s h => gi_clk ha.hH h) ?_ ?_ ?_
    (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv))
  · rintro s hs ⟨⟨⟨I, hL⟩, Γ, q, he, hh, hsc, hE⟩, hc⟩ hg
    exact c_body ha haC hCb haH hgr hcI (hIN s I hL hc) s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ hg
  · rintro s hs ⟨⟨⟨I, hL⟩, Γ, q, he, hh, hsc, hE⟩, hc⟩ ht hr
    have := InitECandidate.Solver.MemSafe.Frames.hoare_of_hoareG (bmi_body ha haC hCb haH hgr hcI (hIN s I hL hc) (Rv := fun _ _ _ _ => True)) s hs
      ⟨hL, Γ, q, he, hh, hsc, hE⟩ ht
    rw [hr] at this
    exact this.1 rfl

  · rintro s hs ⟨⟨I, hL⟩, Γ, q, he, hh, hsc, hE⟩ hc
    have hlt := hIN s I hL hc
    have hN := InitECandidate.Solver.MemSafe.BmiCost.ArrayBound.arr_bound ha.hord0 hE.2
    have hi : s.locals.lookup (nm "i") = some (.val (.word I)) :=
      lv_ev hL (List.mem_cons_self ..)
    simp only [InitECandidate.Solver.SourceCost.wordOf,hi]
    exact lt_of_lt_of_le hlt hN
#print axioms loop_cost
end InitECandidate.Solver.MemSafe.BmiCost.Main
