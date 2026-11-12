import InitECandidate.Solver.MemSafe.Wg.Gp4

/-!
# Wg: `process_general_purpose_requests`, growing the deposit buffer
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

/-- The result of the guarded growth: some buffer with room for the next deposit. -/
def GrowQ (E : EbE σ) (En0 : Env) (S : FS) (dn : BitVec 64) : State σ → Prop := fun t =>
  ∃ a : BitVec 64 × BitVec 64 × Nat, (DepP dn a.2.1 a.2.2 ∧ dn.toNat + 192 ≤ a.2.1.toNat) ∧
    PA E (EnDep En0 a.1 dn a.2.1) (DepS S a.1 a.2.2) t

section g5
variable {E : EbE σ} {En0 Ecur : Env} {S : FS}

theorem enExt_grow {En0 Ecur : Env} (h : EnExt En0 Ecur) (hn : En0 (nm "nd") = none) (dep dn dc w dc' : BitVec 64) :
    EnExt (EnDep En0 w dn dc')
      (((((EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w)))).set (nm "dep") (.val (.word w))).set (nm "dep_cap")
        (.val (.word dc'))) := by
  intro x v hx
  rw [envDep_eq] at hx
  have n1 : nm "dep_n" ≠ nm "dep_cap" := by decide
  have n2 : nm "dep" ≠ nm "dep_n" := by decide
  have n3 : nm "dep" ≠ nm "dep_cap" := by decide
  have n4 : nm "nd" ≠ nm "dep" := by decide
  have n5 : nm "nd" ≠ nm "dep_n" := by decide
  have n6 : nm "nd" ≠ nm "dep_cap" := by decide
  by_cases h1 : x = nm "dep_cap"
  · subst h1
    simp only [if_true] at hx
    simp [Env.set, hx]
  · by_cases h2 : x = nm "dep_n"
    · subst h2
      simp [h1] at hx
      simp [Env.set, EnDep, h1, n2.symm, n1, n5.symm, hx]
    · by_cases h3 : x = nm "dep"
      · subst h3
        simp [h1, h2] at hx
        simp [Env.set, h1, hx]
      · by_cases h4 : x = nm "nd"
        · subst h4
          simp [h1, h2, h3] at hx
          rw [hn] at hx; cases hx
        · simp [h1, h2, h3] at hx
          simp [Env.set, EnDep, h1, h2, h3, h4]
          exact h _ _ hx

theorem gp_grow {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd) (hn0 : En0 (nm "nd") = none)
    (hT : Tidy zGpr (DepS S dep Nd)) (hext : EnExt En0 Ecur) :
    HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) gprS24 (GrowQ E En0 S dn) := by
  obtain ⟨hP1, hP2, hP3⟩ := hP
  have hd := envDep_get (En := Ecur) (dep := dep) (dn := dn) (dc := dc)
  have hcap : (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat = 2 * dc.toNat + 1024 := by
    have e2 : (BitVec.ofNat 64 2).toNat = 2 := rfl
    have e1 : (BitVec.ofNat 64 1024).toNat = 1024 := rfl
    rw [BitVec.toNat_add, BitVec.toNat_mul, e2, e1, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
    omega
  unfold gprS24
  unfold HN
  have hres : ResIns (nm "nd") (fun r (t : State σ) => r = none ∧ GrowQ E En0 S dn t) :=
    resIns_ex (E := E) (B := fun (a : BitVec 64 × BitVec 64 × Nat) => DepP dn a.2.1 a.2.2 ∧ dn.toNat + 192 ≤ a.2.1.toNat)
      (F := fun a => EnDep En0 a.1 dn a.2.1) (S := fun a => DepS S a.1 a.2.2)
      (fun a => by rw [envDep_eq]; simp (config := { decide := true }) [hn0])
  refine hdecAllocFresh (Z := zGpr) hres (n := dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024)
    (fun s hs => evI_add (evI_mul (evI_lv_pa hs hd.2.2) (evI_cw s 2)) (evI_cw s 1024)) hT zGpr_tab ?_
  intro w
  unfold gprS25
  have hEnd : ((EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w))) (nm "nd") = some (.val (.word w)) := env_set_self _ _ _
  have hEdep : ((EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w))) (nm "dep") = some (.val (.word dep)) := by
    rw [env_set_ne _ _ (by decide)]; exact hd.1
  have hEdn : ((EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w))) (nm "dep_n") = some (.val (.word dn)) := by
    rw [env_set_ne _ _ (by decide)]; exact hd.2.1
  have hEdc : ((EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w))) (nm "dep_cap") = some (.val (.word dc)) := by
    rw [env_set_ne _ _ (by decide)]; exact hd.2.2
  have hT1 := tidy_add_fbuf hT w (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat
  refine hseqN (P1 := PA E ((EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w)))
      (fun f => DepS S dep Nd f ∨ f = Fct.fbuf w (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat))
    (hn_post (hn_callR (E := E) (En := (EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w)))
      (S := fun f => DepS S dep Nd f ∨ f = Fct.fbuf w (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat)
      (f := nm "memcpy") (args := [lv (nm "nd"), lv (nm "dep"), lv (nm "dep_n")])
      (W := fun g' => pucW.contains g' = true) (cr_plain tab_memcpy rfl) (gwk_wg (by decide)) (fun _ => False)
      (callObl_plain ?_ hT1 zGpr_puc) ?_) (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))) ?_
  · intro s hs vs hvs Γ p hr hL
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e1 := evI_lv_pa hs hEnd v1 h1
    have e3 := evI_lv_pa hs hEdn v3 h3
    subst e1; subst e3
    have hfh := hL _ (Or.inr rfl : (fun f => DepS S dep Nd f ∨ f = Fct.fbuf w (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat)
      (Fct.fbuf w (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat))
    exact argsOK_memcpy (bufOK_of_fbuf_sub (c := w) ⟨E.s0, E.Γ0, hr⟩ hfh (le_refl _) (by omega))
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim
  unfold gprS26
  refine hseqN (P1 := PA E (((EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w))).set (nm "dep") (.val (.word w)))
      (fun f => DepS S dep Nd f ∨ f = Fct.fbuf w (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat))
    (hassignT (n := nm "dep") (w' := w) ⟨_, hEdep⟩ (fun s hs v hv => evI_lv_pa hs hEnd v hv)) ?_
  have hEdc' : (((EnDep Ecur dep dn dc).set (nm "nd") (.val (.word w))).set (nm "dep") (.val (.word w))) (nm "dep_cap") =
      some (.val (.word dc)) := by
    rw [env_set_ne _ _ (by decide)]; exact hEdc
  refine hn_post (hassignT (n := nm "dep_cap") (w' := dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024) ⟨_, hEdc'⟩
    (fun s hs v hv => evI_add (evI_mul (evI_lv_pa hs hEdc') (evI_cw s 2)) (evI_cw s 1024) v hv)) ?_
  intro t _ hp
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hp
  have hfh := hL _ (Or.inr rfl : (fun f => DepS S dep Nd f ∨ f = Fct.fbuf w (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat)
      (Fct.fbuf w (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat))
  have hlt := fbuf_le (Exb.gp0_ord (ebRun_ord0 hr)) (Exb.gp0_ord (ebRun_ord hr)) hfh
  refine ⟨(w, dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024, (dc * BitVec.ofNat 64 2 + BitVec.ofNat 64 1024).toNat),
    ⟨⟨by rw [hcap]; omega, le_refl _, hlt⟩, by rw [hcap]; omega⟩, ?_⟩
  refine pa_mono ⟨⟨Γ, p, hr, hL⟩, hlk⟩ (enExt_grow hext hn0 dep dn dc w _) ?_
  intro f hf
  rcases hf with hf | rfl
  · exact Or.inl (Or.inl hf)
  · exact Or.inr rfl

theorem gp_guard {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd) (hn0 : En0 (nm "nd") = none)
    (hT : Tidy zGpr (DepS S dep Nd)) (hext : EnExt En0 Ecur) :
    HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) gprS23 (GrowQ E En0 S dn) := by
  unfold gprS23
  have hd := envDep_get (En := Ecur) (dep := dep) (dn := dn) (dc := dc)
  obtain ⟨hP1, hP2, hP3⟩ := hP
  refine hn_ite (hn_pre (gp_grow ⟨hP1, hP2, hP3⟩ hn0 hT hext) (fun s _ h => h.1)) ?_
  refine hoare_pre (hoare_skip (fun s _ h => ?_)) (fun s hs h => h)
  obtain ⟨hp, hc⟩ := h
  obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_false hc
  have ex := evI_lv_pa hp hd.2.2 _ hx
  have ey := evI_add (evI_lv_pa hp hd.2.1) (evI_cw s 192) _ hy
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ex ey
  rw [ex, ey] at hcmp
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_false_iff_not, BitVec.lt_def] at hcmp
  have h192 : (dn + BitVec.ofNat 64 192).toNat = dn.toNat + 192 := by
    have h1 : (BitVec.ofNat 64 192).toNat = 192 := rfl
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt]
    omega
  rw [h192] at hcmp
  exact ⟨rfl, (dep, dc, Nd), ⟨⟨hP1, hP2, hP3⟩, by simp only; omega⟩, pa_enExt hp (enExt_dep hext dep dn dc)⟩

end g5

end InitECandidate.Solver.MemSafe.Wg
