import InitECandidate.Solver.MemSafe.Wg.Ra4

/-!
# Wg: the walk of `requests_append` (assembly)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

section ra5
variable {E : EbE σ} {En : Env}

/-- `memcpy(blob + 1, data, n);` into the fresh block. -/
theorem ra_memcpy {S : FS} {w n : BitVec 64} {N : Nat} {Z : List MlS} (hnl : n.toNat < 2 ^ 32)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hN : N = n.toNat + 8)
    (hfb : S (Fct.fbuf w N))
    (hbl : En (nm "blob") = some (.val (.word w))) (hEn : En (nm "n") = some (.val (.word n))) :
    HN (PA E En S) (callD (nm "memcpy") [(.op .add [lv (nm "blob"), cw 1]), lv (nm "data"), lv (nm "n")])
      (PA E En S) := by
  refine hn_post (hn_callR (E := E) (En := En) (S := S) (f := nm "memcpy")
    (args := [(.op .add [lv (nm "blob"), cw 1]), lv (nm "data"), lv (nm "n")])
    (W := fun g' => tabW.contains g' = true) (cr_plain tab_memcpy rfl) (gwk_tab (by decide)) (fun _ => False)
    (callObl_plain ?_ hT hz) ?_) (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · intro s hs vs hvs Γ p hr hL
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e1 := evI_add (evI_lv_pa hs hbl) (evI_cw s 1) v1 h1
    have e3 := evI_lv_pa hs hEn v3 h3
    subst e1; subst e3
    refine argsOK_memcpy ?_
    have hfh := hL _ hfb
    have hal := hfh.1
    have h1' : (w + BitVec.ofNat 64 1).toNat = w.toNat + 1 := by
      have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
      have := w.isLt
      rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
    exact bufOK_of_fbuf_sub (c := w + BitVec.ofNat 64 1) ⟨E.s0, E.Γ0, hr⟩ hfh (by rw [h1']; omega) (by rw [h1']; omega)
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

end ra5

end InitECandidate.Solver.MemSafe.Wg
