import InitECandidate.Solver.MemSafe.Eb.Tail11

/-!
# `execute_block`: `compute_state_root` and `build_mpt_indexed` steps
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section tail12
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

/-- `compute_state_root(x);` for a fresh 32-byte buffer held in the local `x`. -/
theorem hn_csr {x : MlS} {rw : BitVec 64} (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hEn : En x = some (.val (.word rw))) (hfb : S (Fct.fbuf rw 32)) :
    HN (PA E En S) (callD (nm "compute_state_root") [lv x]) (PA E En S) := by
  refine hn_post (hn_callR (E := E) (En := En) (S := S) (f := nm "compute_state_root") (args := [lv x])
    (W := fun g' => tabW.contains g' = true) cr_csr (gwk_tab (by decide)) (fun _ => False) ?_ ?_)
    (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpa vs hvs callee Γ p hr hL
    have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    have e1 := evI_lv_pa hpa' hEn v1 h1
    subst e1
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    have hre := ebRun_loc hr callee (s.clock - 1)
    refine ⟨by simp [Trie.csrSig], ?_⟩
    intro i pt v hpt hv
    cases i with
    | zero =>
      simp only [Trie.csrSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨rw, rfl, bufOK_of_fbuf ⟨_, _, hre⟩ (hLe _ hfb)⟩
    | succ i => simp [Trie.csrSig] at hpt
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

/-- `build_mpt_indexed(a, n, o);` with `a`, `n` held in locals (or any expressions with known values) and a fresh output buffer. -/
theorem hn_bmi {ea en eo : ExpHOL 64} {A N O : BitVec 64} {n : Nat}
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hA : ∀ s : State σ, PA E En S s → EvI s ea (.val (.word A)))
    (hN : ∀ s : State σ, PA E En S s → EvI s en (.val (.word N)))
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O)))
    (hsl : S (Fct.sla A n)) (hNn : N.toNat = n) (hn : n < 2 ^ 50) (hfb : S (Fct.fbuf O 32)) :
    HN (PA E En S) (callD (nm "build_mpt_indexed") [ea, en, eo]) (PA E En S) := by
  refine hn_post (hn_callR (E := E) (En := En) (S := S) (f := nm "build_mpt_indexed") (args := [ea, en, eo])
    (W := fun g' => tabW.contains g' = true) cr_bmi (gwk_tab (by decide)) (fun _ => False) ?_ ?_)
    (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hpa vs hvs callee Γ p hr hL
    have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e1 := hA s hpa' v1 h1
    have e2 := hN s hpa' v2 h2
    have e3 := hO s hpa' v3 h3
    subst e1 e2 e3
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    have hre := ebRun_loc hr callee (s.clock - 1)
    have hordp := ebRun_ord hre
    obtain ⟨q, hq, -, hL0, -⟩ := ebRun_G hre
    obtain rfl : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hre))
    refine ⟨⟨by simp [Trie.bmiSig], ?_⟩, bmiPre_of_sla hordp hL0 (ebRun_ptrs hre) (hLe _ hsl) hNn hn⟩
    intro i pt v hpt hv
    match i, pt, v with
    | 0, pt, v =>
      simp only [Trie.bmiSig, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    | 1, pt, v =>
      simp only [Trie.bmiSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
      subst hpt; trivial
    | 2, pt, v =>
      simp only [Trie.bmiSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨O, rfl, bufOK_of_fbuf ⟨_, _, hre⟩ (hLe _ hfb)⟩
    | i + 3, pt, v => simp [Trie.bmiSig] at hpt
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

end tail12

end InitECandidate.Solver.MemSafe.Eb
