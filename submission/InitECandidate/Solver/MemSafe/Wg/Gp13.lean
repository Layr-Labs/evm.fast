import InitECandidate.Solver.MemSafe.Wg.Gp12

/-!
# Wg: `process_general_purpose_requests`, the tail: the deposit append and a `process_checked_system_transaction` call with its append
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

theorem csr_new {Γ' : Gam} {st : State σ} {v : ValueHOL 64} {E0 : Ptrs} {p' : Ptrs} {u : State σ}
    (hG : G guestC (HR σ) Γ' st) (hq : CsR v Γ' st.memory) :
    ∃ c : BitVec 64, HoldsAll E0 Γ' p' { st with locals := u.locals } (PucNF v c) := by
  obtain ⟨out, rfl, ⟨o, ho, hob, hot⟩, hlt⟩ := hq
  refine ⟨rd st.memory (out + BitVec.ofNat 64 48), ?_⟩
  intro f hf
  rcases hf with ⟨out', hv, rfl⟩ | ⟨out', hv, rfl⟩ | rfl
  · simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    subst hv
    exact ⟨o, ho, hob, hot, Nat.zero_le _⟩
  · simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    subst hv
    obtain ⟨q, -, hord, hL, -⟩ := hG
    have hmin := (hL.1 o ho).2.2.2.1
    rw [hot, tMCO_minSz] at hmin
    refine ⟨rfl, o, ho, by rw [hot]; exact tMCO_block, 6, by unfold Obj.HasSlot; omega, by rw [hot]; exact tMCO_prot _, ?_⟩
    unfold Obj.cell
    rw [hob]
  · exact hlt

/-- The tail state: the request count cell holds some `kx ≤ m`. -/
def TQ (E : EbE σ) (Ecur : Env) (Sk : FS) (bo0 : BitVec 64) (m : Nat) : State σ → Prop := fun t =>
  ∃ kx : BitVec 64, kx.toNat ≤ m ∧ PA E Ecur (SkX Sk bo0 kx) t

section g13
variable {E : EbE σ}

theorem enExt_toDep {Eo : Env} (h1 : Eo (nm "dep") = none) (h2 : Eo (nm "dep_n") = none) (h3 : Eo (nm "dep_cap") = none)
    (dep dn dc : BitVec 64) : EnExt Eo (EnDep Eo dep dn dc) := by
  intro x v hx
  rw [envDep_eq]
  by_cases a1 : x = nm "dep_cap"
  · subst a1; rw [h3] at hx; cases hx
  · by_cases a2 : x = nm "dep_n"
    · subst a2; rw [h2] at hx; cases hx
    · by_cases a3 : x = nm "dep"
      · subst a3; rw [h1] at hx; cases hx
      · simp [a1, a2, a3, hx]

/-- `if 0 < dep_n { requests_append(0, dep, dep_n); }` from the loop's end state. -/
theorem gp_t1 {Eo : Env} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk kx0 : BitVec 64}
    (hk0 : kx0.toNat ≤ 0) (hgw : gword E.s0 (nm "bo") = some bo0) (hrq : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (h1 : Eo (nm "dep") = none) (h2 : Eo (nm "dep_n") = none) (h3 : Eo (nm "dep_cap") = none) :
    Hoare σ guestCtx (DepI E Eo (SkX (GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) bo0 kx0)) gprS29
      (fun r t => r = none ∧ TQ E Eo (GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) bo0 1 t) := by
  intro s hs ⟨dep, dn, dc, Nd, hP, hp⟩ ht
  unfold gprS29
  obtain ⟨hP1, hP2, hP3⟩ := hP
  set G0 := GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk with hG0
  have hd := envDep_get (En := Eo) (dep := dep) (dn := dn) (dc := dc)
  have hconv : ∀ t kx, PA E (EnDep Eo dep dn dc) (SkX (fun f => G0 f ∨ f = Fct.fbuf dep Nd) bo0 kx) t →
      PA E Eo (SkX G0 bo0 kx) t := fun t kx h =>
    pa_mono h (enExt_toDep h1 h2 h3 dep dn dc) (fun f hf => by
      rcases hf with hf | hf
      · exact Or.inl (Or.inl hf)
      · exact Or.inr hf)
  have hconv0 : ∀ t, PA E (EnDep Eo dep dn dc) (DepS (SkX G0 bo0 kx0) dep Nd) t → PA E Eo (SkX G0 bo0 kx0) t := fun t h =>
    pa_mono h (enExt_toDep h1 h2 h3 dep dn dc) (fun f hf => Or.inl hf)
  refine (hn_ite (c := .cmp .lower (cw 0) (lv (nm "dep_n"))) (P := PA E (EnDep Eo dep dn dc) (DepS (SkX G0 bo0 kx0) dep Nd))
    (Q := TQ E Eo G0 bo0 1) ?_ ?_) s hs hp ht
  · refine hn_pre (hn_post (gp_append (E := E) (En := EnDep Eo dep dn dc) (Sk := fun f => G0 f ∨ f = Fct.fbuf dep Nd)
      (Ex := fun _ => False) (m := 0) (kx := kx0) (args := [cw 0, lv (nm "dep"), lv (nm "dep_n")]) (bo0 := bo0) (rq0 := rq0)
      (a1 := a1) (a2 := a2) (a3 := a3) (a4 := a4) (bs := bs) (ba := ba) (bk := bk) (bi := bi) (bs2 := bs2) (sk := sk)
      (by omega) hk0 hgw hrq (fun f hf => Or.inl hf)
      (avoid_add (L := [bo0 + BitVec.ofNat 64 56]) gs_avoid (fun y hy => hy.elim) (fun y hy => hy))
      (tidy_add_fbuf gs_tidy dep Nd) ?_) (fun t _ ⟨kx', hk', hh⟩ => ⟨kx', hk', hconv t kx' hh⟩)) ?_
    · intro s' hs' vs hvs
      obtain ⟨v1, vs1, rfl, h1', hr1⟩ := evs_cons_inv hvs
      obtain ⟨v2, vs2, rfl, h2', hr2⟩ := evs_cons_inv hr1
      obtain ⟨v3, vs3, rfl, h3', hr3⟩ := evs_cons_inv hr2
      rw [evs_nil] at hr3
      cases hr3
      rw [ev_cw] at h1'
      cases h1'
      have e2 := evI_lv_pa hs' hd.1 v2 h2'
      have e3 := evI_lv_pa hs' hd.2.1 v3 h3'
      subst e2; subst e3
      exact ⟨_, dep, dn, rfl, by omega⟩
    · intro t _ h
      refine pa_mono h.1 (fun _ _ h => h) (fun f hf => ?_)
      rcases hf with ((hf | hf) | hf) | hf
      · exact Or.inl (Or.inl hf)
      · exact Or.inr hf
      · exact Or.inl (Or.inr hf)
      · exact hf.elim
  · refine hoare_pre (hoare_skip (fun s' _ h => ⟨rfl, kx0, by omega, hconv0 s' h.1⟩)) (fun s hs h => h)

end g13

end InitECandidate.Solver.MemSafe.Wg
