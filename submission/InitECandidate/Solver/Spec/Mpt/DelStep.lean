import InitECandidate.Solver.Spec.Mpt.DelPush

/-!
# One iteration of the delete descent keeps `DInv` (terminal paths and the extension push)
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}
variable {be0 : Bool}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch)

theorem df_res {S0 : Nat} {K KL : BitVec 64} {t : PanSemStateFiniteExact 64 σ} (w : BitVec 64)
    (h : DF S0 K KL t) : DF S0 K KL (setVarHOLFinite (nm "res") (.val (.word w)) t) := by
  obtain ⟨⟨p, hp, hord, hsp, T, hT, hch⟩, hS0, -, hk, hkl⟩ := h
  exact ⟨⟨p, hp, hord, hsp, T, by rw [lk_set_ne _ _ (by decide)]; exact hT, hch⟩, hS0,
    ⟨w, lk_set_self _ _ _⟩, by rw [lk_set_ne _ _ (by decide)]; exact hk,
    by rw [lk_set_ne _ _ (by decide)]; exact hkl⟩

theorem goZ_set_ne {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : y ≠ go_) (v : ValueHOL 64)
    (h : GoZ t) : GoZ (setVarHOLFinite y v t) := by
  unfold GoZ; rw [lk_set_ne _ _ hy]; exact h

/-- Terminal `res = e` with a word value. -/
theorem term_res {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL : BitVec 64} {e : ExpHOL 64}
    {P : PanSemStateFiniteExact 64 σ → Prop}
    (h : ∀ t, P t → DF S0 K KL t ∧ GoZ t ∧ ∃ w, ev t e = some (.val (.word w))) :
    Hoare σ X P (.assign .local (nm "res") e) (KP (DInv be0 Nd S0 K KL)) :=
  hoare_assign fun t _ ht v hv _ => by
    obtain ⟨hdf, hgo, w, hw⟩ := h t ht
    rw [hw] at hv; cases hv
    exact Or.inl ⟨rfl, dinv_of_term (df_res w hdf) (goZ_set_ne (by decide) _ hgo)⟩

/-- `DF` and `GoZ` through a call to a memory- and pointer-keeping callee, then `x = v`. -/
theorem df_keep_call {S0 : Nat} {K KL : BitVec 64} {s st : PanSemStateFiniteExact 64 σ}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    (hR : st.memory = (callEntryStateHOLFinite s callee).memory ∧
      ptrsOf st = ptrsOf (callEntryStateHOLFinite s callee))
    (h : DF S0 K KL s) : DF S0 K KL { st with locals := s.locals } :=
  df_frame (t := s) (fun _ _ => rfl) (sameState_ptrs hR.2 hR.1) h

/-! ## The leaf -/

theorem leaf_term (hC : X.code.lookup = guestCode) {Nd : BitVec 64 → Prop} {S0 : Nat}
    {K KL N : BitVec 64} :
    Hoare σ X (fun t => DF S0 K KL t ∧ GoZ t ∧ t.locals.lookup (nm "node") = some (.val (.word N)))
      delLeaf (KP (DInv be0 Nd S0 K KL)) := by
  unfold delLeaf
  refine hoare_seq (R := fun r t => r = none ∧ DF S0 K KL t ∧ GoZ t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun t _ ⟨hdf, hgo, hn⟩ v hv _ => ?_
    rw [ev_lv, hn] at hv; cases hv
    exact ⟨rfl, df_res N hdf, goZ_set_ne (by decide) _ hgo⟩
  refine hoare_ite ?_ (hoare_skip fun t _ ⟨⟨_, hdf, hgo⟩, _⟩ => Or.inl ⟨rfl, dinv_of_term hdf hgo⟩)
  refine hoare_decCallS (keepsPM_memeq hC) fun s _ ⟨⟨_, hdf, hgo⟩, _⟩ _ _ callee v st hR _ _ => ?_
  have hdf1 := dinv_set (Nd := Nd) (trk_of "eq") v (df_keep_call hR hdf)
  have hgo1 : GoZ (setVarHOLFinite (nm "eq") v { st with locals := s.locals }) :=
    goZ_set_ne (by decide) _ hgo
  refine hoare_conseq (P := fun t => DF S0 K KL t ∧ GoZ t) ?_
    (fun t _ ht => by subst ht; exact ⟨hdf1, hgo1⟩)
    (fun _ _ _ _ h => kp_dinv_restore (trk_of "eq") _ h)
  refine hoare_ite (term_res fun t ⟨⟨hdf, hgo⟩, _⟩ => ⟨hdf, hgo, _, ev_cw t 0⟩)
    (hoare_skip fun t _ ⟨⟨hdf, hgo⟩, _⟩ => Or.inl ⟨rfl, dinv_of_term hdf hgo⟩)

/-! ## The branch at the end of the key -/

theorem brEnd_term (hcb : BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd))
    {Nd : BitVec 64 → Prop} {S0 : Nat} {K KL N : BitVec 64} :
    Hoare σ X (fun t => DF S0 K KL t ∧ GoZ t ∧ t.locals.lookup (nm "node") = some (.val (.word N)) ∧
        N.toNat + 176 ≤ heapEnd)
      delBrEnd (KP (DInv be0 Nd S0 K KL)) := by
  unfold delBrEnd
  refine hoare_ite (term_res fun t ⟨⟨hdf, hgo, hn, _⟩, _⟩ => ⟨hdf, hgo, N, by rw [ev_lv, hn]⟩) ?_
  -- two stores into the node, below `heapEnd`
  have hstore : ∀ k : Nat, k < 176 → Hoare σ X (fun t => DF S0 K KL t ∧ GoZ t ∧
        t.locals.lookup (nm "node") = some (.val (.word N)) ∧ N.toNat + 176 ≤ heapEnd)
      (.store (.op .add [lv (nm "node"), cw k]) (cw 0))
      (fun r t => r = none ∧ DF S0 K KL t ∧ GoZ t ∧
        t.locals.lookup (nm "node") = some (.val (.word N)) ∧ N.toNat + 176 ≤ heapEnd) := by
    intro k hk
    refine hoare_post (hoare_st_w (fun t h => h.2.2.1) (fun t _ => ev_cw t 0)) ?_
    rintro r t' _ _ ⟨hr, t, ⟨hdf, hgo, hn, h176⟩, hl, hg, hm⟩
    refine ⟨hr, df_frame (t := t) (fun y _ => by rw [hl]) (fun p hp hord => ⟨p, ?_, hord, rfl, ?_⟩) hdf,
      by unfold GoZ; rw [hl]; exact hgo, by rw [hl]; exact hn, h176⟩
    · rw [← hp]; exact ptrsOf_frame hg
    · intro a ha
      rw [hm]
      apply upd_out
      intro e
      subst e
      have hle := heapEnd_le_sp hord
      unfold o64 at ha
      rw [BitVec.toNat_add, BitVec.toNat_ofNat] at ha
      have := heapEnd_lt
      omega
  refine hoare_seq (R := fun r t => r = none ∧ DF S0 K KL t ∧ GoZ t ∧
      t.locals.lookup (nm "node") = some (.val (.word N)) ∧ N.toNat + 176 ≤ heapEnd)
    (hoare_pre (hstore 160 (by decide)) (fun _ _ h => h.1))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_pre (hoare_seq (hstore 168 (by decide)) (fun _ _ _ hr _ h => absurd h.1 hr) ?_)
    (fun _ _ h => h.2)
  refine hoare_pre (P := fun t => DF S0 K KL t ∧ GoZ t ∧
      t.locals.lookup (nm "node") = some (.val (.word N)) ∧ N.toNat + 176 ≤ heapEnd) ?_
    (fun _ _ h => h.2)
  refine hoare_callA (k := .local) hcb fun s _ ⟨hdf, hgo, hn, h176⟩ vs hvs callee v st hR _ hval => ?_
  obtain ⟨⟨p, hp, hord, hsp, T, hT, hch⟩, hS0, ⟨R, hRes⟩, hk, hkl⟩ := hdf
  obtain ⟨w', rfl⟩ := word_of_valid hRes hval
  have harg : arg0 vs + 176 ≤ heapEnd := by
    obtain ⟨v1, r1, rfl, hv1, -⟩ := evs_cons_inv hvs
    rw [ev_lv, hn] at hv1; cases hv1; exact h176
  obtain ⟨p', hp', hord', hsp', hw⟩ := hR (by simp [Good]) p hp hord harg
  refine Or.inl ⟨rfl, dinv_of_term ?_ (goZ_set_ne (by decide) _ hgo)⟩
  refine df_res w' (df_frame (t := s) (fun _ _ => rfl) (fun p0 hp0 _ => ?_)
    ⟨⟨p, hp, hord, hsp, T, hT, hch⟩, hS0, ⟨R, hRes⟩, hk, hkl⟩)
  rw [hp] at hp0
  cases hp0
  refine ⟨p', by rw [← hp']; rfl, hord', hsp', fun a ha => ?_⟩
  by_contra hne
  have := hw a hne
  omega

end InitECandidate.Solver.Spec.Mpt
