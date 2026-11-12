import InitECandidate.Solver.MemSafe.Wg.Gp3

/-!
# Wg: `process_general_purpose_requests`, extracting a deposit into the buffer
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

/-- The globals the `process_general_purpose_requests` walk names in facts. -/
def zGpr : List MlS :=
  [nm "bo", nm "bs", nm "bal_accounts", nm "bal_key_buf", nm "bal_idx_accts", nm "bal_idx_stor", nm "sk_buf",
   nm "withdrawal_request_address", nm "consolidation_request_address", nm "builder_deposit_address",
   nm "builder_exit_address"]

theorem zGpr_tab : ∀ g ∈ zGpr, ¬ (tabW.contains g = true) := by decide
theorem zGpr_puc : ∀ g ∈ zGpr, ¬ (pucW.contains g = true) := by decide

/-- The base of a non-empty fresh block lies below `scratchEnd`. -/
theorem fbuf_base_lt {Γ : Gam} {p0 p : Ptrs} {w : BitVec 64} {N : Nat} (h0 : p0.Ordered) (h : p.Ordered)
    (hf : FreshBuf Γ p0 p w N) (hN : 0 < N) : w.toNat < scratchEnd := by
  obtain ⟨hal, hfr⟩ := hf
  obtain ⟨hfresh, -⟩ := hfr w ⟨hal, by omega, by omega⟩
  unfold Fresh at hfresh
  unfold Ptrs.Ordered at h0 h
  unfold heapEnd scratchEnd at h0 h
  unfold scratchEnd
  omega

theorem argsOK_extract {Γ : Gam} {p : Ptrs} {w : BitVec 64} {a b : ValueHOL 64} (h : BufOK guestC Γ p w.toNat 192) :
    ArgsOK guestC Γ p [.any, .any, (.buf 192)] [a, b, .val (.word w)] := by
  refine ⟨rfl, ?_⟩
  intro i pt v hpt hv
  match i, pt, v with
  | 0, pt, v =>
    simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt; trivial
  | 1, pt, v =>
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt; trivial
  | 2, pt, v =>
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨w, rfl, h⟩
  | i + 3, pt, v => simp at hpt

theorem envDep_eq (En : Env) (dep dn dc x : _) : EnDep En dep dn dc x = (if x = nm "dep_cap" then some (.val (.word dc))
    else if x = nm "dep_n" then some (.val (.word dn)) else if x = nm "dep" then some (.val (.word dep)) else En x) := by
  simp [EnDep, Env.set]

theorem enExt_depn {En0 Ecur : Env} (h : EnExt En0 Ecur) (dep dn dn' dc : BitVec 64) :
    EnExt (EnDep En0 dep dn' dc) ((EnDep Ecur dep dn dc).set (nm "dep_n") (.val (.word dn'))) := by
  intro x v hx
  rw [envDep_eq] at hx
  have n1 : nm "dep_n" ≠ nm "dep_cap" := by decide
  have n2 : nm "dep" ≠ nm "dep_n" := by decide
  have n3 : nm "dep" ≠ nm "dep_cap" := by decide
  by_cases h1 : x = nm "dep_cap"
  · subst h1
    simp only [if_true] at hx
    simp [Env.set, EnDep, n1.symm, hx]
  · by_cases h2 : x = nm "dep_n"
    · subst h2
      simp [h1] at hx
      simp [Env.set, hx]
    · by_cases h3 : x = nm "dep"
      · subst h3
        simp [h1, h2] at hx
        simp [Env.set, EnDep, h1, h2, hx]
      · simp [h1, h2, h3] at hx
        simp [Env.set, EnDep, h1, h2, h3]
        exact h _ _ hx

section g4
variable {E : EbE σ} {En0 Ecur : Env} {S : FS}

theorem gp_extract {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd) (hg : dn.toNat + 192 ≤ dc.toNat)
    (hT : Tidy zGpr (DepS S dep Nd)) (hext : EnExt En0 Ecur) :
    HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) gprS27 (DepI E En0 S) := by
  unfold gprS27
  have hd := envDep_get (En := Ecur) (dep := dep) (dn := dn) (dc := dc)
  refine hseqN (P1 := PA E (EnDep Ecur dep dn dc) (DepS S dep Nd))
    (hn_post (hn_callR (E := E) (En := EnDep Ecur dep dn dc) (S := DepS S dep Nd) (f := nm "extract_deposit_data")
      (args := [(.load .one (.op .add [lv (nm "log"), cw 24])), (.load .one (.op .add [lv (nm "log"), cw 32])),
        (.op .add [lv (nm "dep"), lv (nm "dep_n")])])
      (W := fun g' => pucW.contains g' = true) (cr_plain tab_extract rfl) (gwk_wg (by decide)) (fun _ => False)
      (callObl_plain ?_ hT zGpr_puc) ?_) (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))) ?_
  · intro s hs vs hvs Γ p hr hL
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e3 := evI_add (evI_lv_pa hs hd.1) (evI_lv_pa hs hd.2.1) v3 h3
    subst e3
    have hfh := hL _ (Or.inr rfl : DepS S dep Nd (Fct.fbuf dep Nd))
    obtain ⟨hP1, hP2, hP3⟩ := hP
    have hNd : 0 < Nd := by omega
    have hlt := fbuf_base_lt (Exb.gp0_ord (ebRun_ord0 hr)) (Exb.gp0_ord (ebRun_ord hr)) hfh hNd
    have hadd : (dep + dn).toNat = dep.toNat + dn.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt]
      unfold scratchEnd at hlt
      omega
    refine argsOK_extract ?_
    exact bufOK_of_fbuf_sub (c := dep + dn) ⟨E.s0, E.Γ0, hr⟩ hfh (by rw [hadd]; omega) (by rw [hadd]; omega)
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim
  refine hn_post (hassignT (n := nm "dep_n") (w' := dn + BitVec.ofNat 64 192) ⟨_, hd.2.1⟩
    (fun s hs v hv => evI_add (evI_lv_pa hs hd.2.1) (evI_cw s 192) v hv)) ?_
  intro t _ hp
  obtain ⟨hP1, hP2, hP3⟩ := hP
  have hadd : (dn + BitVec.ofNat 64 192).toNat = dn.toNat + 192 := by
    have h1 : (BitVec.ofNat 64 192).toNat = 192 := rfl
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt]
    omega
  exact ⟨dep, dn + BitVec.ofNat 64 192, dc, Nd, ⟨by rw [hadd]; omega, hP2, hP3⟩,
    pa_mono hp (enExt_depn hext dep dn _ dc) (fun _ hf => hf)⟩

end g4

end InitECandidate.Solver.MemSafe.Wg
