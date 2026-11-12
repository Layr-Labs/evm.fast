import InitECandidate.Solver.MemSafe.Ra.AttCost

/-!
# `run_attempt`: stores into a block object, `memzero` of an adopted block, `be = alloc(120)`

`stores_mod`: a multi-word store writes only `w + 8 i`. `ev_load_comb4`: a four-word load has four words. `hn_stMod`: a store whose cells are
`prot` cells of one block object (adopted `tBOS`), no fact of the walk reading them. `hn_memzeroBlk`: `memzero(g, n)` for a global that
holds an adopted block. `hn_allocAdoptS`: `g = alloc(e)` into a scalar global, adopting the block.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem stores_mod {w : BitVec 64} {xs : List (HolWordLab 64)} {D : BitVec 64 → Prop} [DecidablePred D]
    {M mem : BitVec 64 → HolWordLab 64} (h : panMemStoresHOL w xs D M = some mem) :
    ∀ a, (∀ i, i < xs.length → a ≠ w + BitVec.ofNat 64 (8 * i)) → mem a = M a := by
  induction xs generalizing w M with
  | nil =>
    intro a _
    simp only [panMemStoresHOL_nil, Option.some.injEq] at h
    rw [← h]
  | cons x rest ih =>
    intro a ha
    unfold panMemStoresHOL at h
    split at h
    · rename_i updated hu
      have h0 := ih h
      have ha0 : a ≠ w := by
        have := ha 0 (by simp)
        simpa using this
      have hu' : updated a = M a := by
        unfold panMemStoreHOL at hu
        split at hu
        · simp only [Option.some.injEq] at hu
          rw [← hu]; simp [ha0]
        · simp at hu
      rw [h0 a (fun i hi => ?_), hu']
      have := ha (i + 1) (by simpa using hi)
      intro he
      apply this
      rw [he, panBytesInWord]
      simp only [BitVec.add_assoc]
      congr 1
      apply BitVec.eq_of_toNat_eq
      simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
      omega
    · simp at h

theorem ev_load_comb4 {s : PanSemStateFiniteExact 64 σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load (.comb [.one, .one, .one, .one]) a) = some v) : (flattenHOL v).length = 4 := by
  simp only [ev, evalHOLExact] at h
  split at h
  · split at h
    · rename_i w hw
      classical
      have hs := memLoadHOLExact_some_shapeOf_eq _ _ _ _ _ _ h
      cases v with
      | val x => simp [shapeOfHOLExact] at hs
      | rStruct fields =>
        simp only [shapeOfHOLExact, ShapeHOL.comb.injEq] at hs
        rcases fields with _ | ⟨f1, _ | ⟨f2, _ | ⟨f3, _ | ⟨f4, _ | ⟨f5, fs⟩⟩⟩⟩⟩
        · simp at hs
        · simp at hs
        · simp at hs
        · simp at hs
        · simp only [List.map_cons, List.map_nil, List.cons.injEq, and_true] at hs
          obtain ⟨h1, h2, h3, h4⟩ := hs
          cases f1 <;> cases f2 <;> cases f3 <;> cases f4 <;> simp_all [shapeOfHOLExact, flattenHOL]
        · have := congrArg List.length hs
          simp at this
      | nStruct n fs => simp [shapeOfHOLExact] at hs
    · simp at h
  · simp at h

section st
variable {E : EbE σ} {En : Env} {S : FS}

theorem hn_stMod {a e : ExpHOL 64} {c : BitVec 64} {n : Nat}
    (hcell : ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      EvI s a (.val (.word c)) ∧ (∀ v, ev s e = some v → (flattenHOL v).length = n) ∧
      ∃ (M : Obj) (k0 : Nat), M ∈ Γ ∧ M.ty ∈ blockTys ∧
        ∀ i, i < n → M.HasSlot (k0 + i) ∧ c + BitVec.ofNat 64 (8 * i) = M.cell (k0 + i))
    (hfree : ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y →
        ∀ i, i < n → y ≠ c + BitVec.ofNat 64 (8 * i)) :
    HN (PA E En S) (.store a e) (PA E En S) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  obtain ⟨hea, hlen, M, k0, hM, hMt, hcells⟩ := hcell s hpa Γ p hr hL
  have hw' := hea _ hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
  subst hw'
  have hn := hlen v hv
  have hmod := @stores_mod _ _ _ (fun x => Classical.propDecidable (s.memaddrs x)) _ _ hmem
  have hRB : ∀ b : BitVec 64, (∃ i, i < n ∧ b = w + BitVec.ofNat 64 (8 * i)) → BCell guestC Γ b := by
    rintro b ⟨i, hi, rfl⟩
    obtain ⟨hk, hc⟩ := hcells i hi
    exact ⟨M, hM, hMt, k0 + i, hk, blk_prot (by simpa [blockTys] using hMt) _, hc⟩
  have hmo : ModifiesOnly (fun b : BitVec 64 => ∃ i, i < n ∧ b = w + BitVec.ofNat 64 (8 * i)) s.memory mem := by
    intro b hb
    exact hmod b (fun i hi he => hb ⟨i, by omega, he⟩)
  have hGt : G guestC (HR σ) Γ { s with memory := mem } := G_mem_blk (ebRun_G hr) hRB hmo rfl rfl rfl
  have hrun := ebRun_memchg hr hGt rfl
  refine ⟨rfl, ⟨Γ, p, hrun, ?_⟩, hlk⟩
  obtain ⟨q', hq', hord, hL0, -⟩ := ebRun_G hr
  obtain rfl : p = q' := (Option.some.inj (hq'.symm.trans (ebRun_ptrs hr))).symm
  have hstep : StepD Γ p s Γ p { s with memory := mem } :=
    ⟨ebRun_ptrs hr, ebRun_ptrs hrun, mono_g_refl (ebRun_ord hr), fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ebRun_G hr, hGt⟩
  refine holds_step hstep (ebRun_ord0 hr) (fun f hf a' ha' => hmo a' ?_) (fun _ _ _ _ => rfl) (fun _ _ _ => rfl) hL
  rintro ⟨i, hi, he⟩
  by_cases hpc : ∃ a'' v'', f = Fct.pcv a'' v''
  · obtain ⟨a'', v'', rfl⟩ := hpc
    have hh := hL _ hf
    have ha'' : a' = a'' := ha'
    subst ha''
    exact plCell_ne_bCell hord hL0 hh.2 (hRB _ ⟨i, hi, he⟩) rfl
  · push_neg at hpc
    exact hfree s hpa Γ p hr hL f hf (fun a v h => hpc a v h) a' ha' i hi he


/-- `memzero(be, 120)` where `be` (the global) is a `tBOS` object of size 120 and no fact reads its cells. -/
theorem hn_memzeroBe {w : BitVec 64} (hw : S (Fct.gobj (nm "be") w tBOS)) (ho : S (Fct.obj w tBOS 120))
    (hrd : ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y → ¬ Overlap w.toNat 120 y) :
    HN (PA E En S) (callD (nm "memzero") [gv (nm "be"), cw 120])
      (PA E En S) := by
  refine hoare_callD (funSpec_memzero_blk (σ := σ)) ?_
  intro s hs hpa vs hvs callee v st hR hst
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hw' : gword s (nm "be") = some w := (hL _ hw).1
  have hvs' : vs = [.val (.word w), .val (.word (BitVec.ofNat 64 120))] := by
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [ev_gv_of_gword hw'] at h1
    rw [ev_cw] at h2
    cases h1; cases h2; rfl
  subst hvs'
  obtain ⟨o, hoΓ, hob, hot, hos⟩ := hL _ ho
  obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
  obtain ⟨hq1, hq2, hq3, hq4, hq5⟩ := hL0.1 o hoΓ
  have hqp : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hr))
  have hhi := obj_hi (hqp ▸ hord) hL0 hoΓ
  have hlo : o.lo = w.toNat := by unfold Obj.lo; rw [hob]
  have h120 : (BitVec.ofNat 64 120).toNat = 120 := by decide
  have hw8 : w.toNat % 8 = 0 := by rw [← hlo]; exact hq1
  have hbn : o.base.toNat = w.toNat := by rw [hob]
  obtain ⟨hg1, hg2, hg3, hmod, hz⟩ := hR _ rfl w (BitVec.ofNat 64 120) rfl hw8 (by rw [h120]) (Or.inr (by
    rw [h120]; unfold Obj.hi at hhi; omega))
  rw [h120] at hmod hz
  have hRB : ∀ a, Overlap w.toNat 120 a → BCell guestC Γ a := fun a hov =>
    bcell_of_overlap hoΓ (Or.inl hot) (by rw [hlo]; exact hw8) hq2 ⟨hov.1, by rw [hlo]; exact hov.2.1,
      by rw [hlo]; have := hov.2.2; omega⟩
  have hGt : G guestC (HR σ) Γ { st with locals := s.locals } :=
    G_mem_blk (ebRun_G hr) hRB hmod hg1 hg2 hg3
  have hrun := ebRun_memchg hr hGt hg1
  refine ⟨rfl, ⟨Γ, p, hrun, ?_⟩, hlk⟩
  have hstep : StepD Γ p s Γ p { st with locals := s.locals } :=
    ⟨ebRun_ptrs hr, ebRun_ptrs hrun, mono_g_refl (ebRun_ord hr), fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ebRun_G hr, hGt⟩
  have hord' : p.Ordered := ebRun_ord hr
  have hL0' : Layout guestC p Γ := by
    obtain ⟨q', hq', -, hLL, -⟩ := ebRun_G hr
    obtain rfl : q' = p := Option.some.inj (hq'.symm.trans (ebRun_ptrs hr))
    exact hLL
  have hgs : ∀ g, gword st g = gword s g := fun g => gword_congr hg1 g
  have h1 : HoldsAll E.p0 Γ p { st with locals := s.locals } S :=
    holds_step hstep (ebRun_ord0 hr) (fun f hf a' ha' => hmod a' (by
        by_cases hpc : ∃ a'' v'', f = Fct.pcv a'' v''
        · obtain ⟨a'', v'', rfl⟩ := hpc
          have hh := hL _ hf
          have ha'' : a' = a'' := ha'
          subst ha''
          intro hov
          exact plCell_ne_bCell hord' hL0' hh.2 (hRB _ hov) rfl
        · push_neg at hpc
          exact hrd s ⟨⟨Γ, p, hr, hL⟩, hlk⟩ Γ p hr hL f hf (fun a v h => hpc a v h) a' ha'))
      (fun g w' ty hm => hgs g) (fun g w' hm => hgs g) hL
  exact h1


/-- `g = alloc(e);` for a scalar free global `g`: the block is adopted at once as a block object and `g` points at it. -/
theorem hn_allocAdoptS {g : MlS} {e : ExpHOL 64} {n : BitVec 64} {ty : Nat}
    (hty : ty = tBOS ∨ ty = tBO ∨ ty = tMCO) (hn8 : n.toNat % 8 = 0) (hmin : (guestC.ty ty).minSz ≤ n.toNat)
    (hpos : 0 < n.toNat) (hgt : guestC.GT.lookup g = some .scalar) (hg : FreeG g)
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hgS : ∀ g' w t, S (Fct.gobj g' w t) → g' ≠ gHeap ∧ g' ≠ g)
    (hgv : ∀ g' w, S (Fct.gval g' w) → g' ≠ gHeap ∧ g' ≠ g) :
    HN (PA E En S) (.call (some (some (.global, g), none)) (nm "alloc") [e])
      (fun t => ∃ w : BitVec 64, PA E En (fun f => S f ∨ AdoptNF S w ty n.toNat f ∨ f = Fct.gobj g w ty ∨ f = Fct.gval g w) t) := by
  refine hoare_callA (funSpec_allocRel (σ := σ)) ?_
  intro s hs hpa vs hvs callee v st hAR hst hvalid
  have hvs' := alloc_args (he s hpa) hvs
  subst hvs'
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  obtain ⟨q, Γ', p', rfl, hstep, hrun, hH⟩ :=
    alloc_adopt_core hty hn8 hmin hpos hAR hr hL (fun g' w t h => (hgS g' w t h).1) (fun g' w h => (hgv g' w h).1)
  have hGs : G guestC (HR σ) (Γ' ++ [⟨q, ty, n.toNat⟩]) (setKvarHOLFinite .global g (.val (.word q)) {st with locals := s.locals}) :=
    G_setGlobPtr (ebRun_G hrun) hgt hg.hpg hg.hne
      (by trivial)
  have hnogo : ∀ f, AdoptNF S q ty n.toNat f → (∀ g' w' t', f ≠ Fct.gobj g' w' t') ∧ (∀ g' w', f ≠ Fct.gval g' w') := by
    intro f hf
    rcases hf with rfl | ⟨b, ty', n', -, rfl⟩ | ⟨g', b, ty', -, rfl⟩ | rfl <;> refine ⟨fun g' w' t' h => ?_, fun g' w' h => ?_⟩ <;> cases h
  have hS2 : HoldsAll E.p0 (Γ' ++ [⟨q, ty, n.toNat⟩]) p' (setKvarHOLFinite .global g (.val (.word q)) {st with locals := s.locals})
      (fun f => S f ∨ AdoptNF S q ty n.toNat f) := by
    refine holdsAll_setGlob hH ?_ ?_
    · intro g' w' t' h'
      rcases h' with h' | h'
      · exact (hgS g' w' t' h').2
      · exact absurd rfl ((hnogo _ h').1 g' w' t')
    · intro g' w' h'
      rcases h' with h' | h'
      · exact (hgv g' w' h').2
      · exact absurd rfl ((hnogo _ h').2 g' w')
  refine ⟨rfl, q, ⟨_, p', ebRun_setGlob hrun hg hGs, ?_⟩, fun x v hx => hlk x v hx⟩
  intro f hf
  rcases hf with hf | hf | rfl | rfl
  · exact hS2 f (Or.inl hf)
  · exact hS2 f (Or.inr hf)
  · exact ⟨gword_setG_self, ⟨q, ty, n.toNat⟩, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl⟩
  · exact gword_setG_self


end st

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.hn_stMod
#print axioms InitECandidate.Solver.MemSafe.Att.hn_memzeroBe
#print axioms InitECandidate.Solver.MemSafe.Att.hn_allocAdoptS
