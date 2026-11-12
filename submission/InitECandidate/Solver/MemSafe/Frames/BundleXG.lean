import InitECandidate.Solver.MemSafe.Frames.BundleX
import InitECandidate.Solver.MemSafe.Frames.GcX
import InitECandidate.Solver.MemSafe.Frames.BKeep

/-!
# The guest `run_frames` bundle on the chain extension `GP` / `GR` (frames8, task 4)

* `ne_cells`: cells of laid-out objects of different types, or of different slots, differ.
* **`chainE_exc`**: `frame_exception`'s footprint (`excCells`: driver slots of the running EV
  record, `CK_DONE` of the running CK record) keeps `ChainE GP GR`.
* **`exc_jSpecX`**, **`epi_jSpecX`**: the `frame_exception` / `frame_epilogue` entries of
  `BundleX … GP GR` (the latter through `state_restore`'s capability summary, `PWtopM []`).
* **`bundle_ofX`**: the guest `BundleX` from the open entries (`op_dispatch`'s summary and cost,
  `finish_child`'s `fin_jSpec` / `fin_condCost`, `state_restore`'s `KeepsFp` and cost), and
  **`run_frames_condCost_ofX`**.
-/

set_option autoImplicit false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.HtabEntries

variable {σ : Type} {X : Ctx 64}

theorem ne_cells {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) {k k' : Nat} (hk : k < o.size) (hk' : k' < o'.size)
    (h : o.ty ≠ o'.ty ∨ k ≠ k') : o.base + BitVec.ofNat 64 k ≠ o'.base + BitVec.ofNat 64 k' := by
  refine cell_ne hord hL ho ho' hk hk' ?_
  rcases h with h | h
  · exact Or.inl (base_ne_of_ty hL ho ho' h)
  · by_cases hb : o.base = o'.base
    · exact Or.inr h
    · exact Or.inl hb

/-- A cell of a laid-out object at byte `k` is outside `excCells` of the running records `oe` /
`oc`, if it is no EV driver byte of `oe` and not `oc`'s byte 32. -/
theorem notExcCellsX {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {p : Ptrs} {Γ : Gam}
    (hord : p.Ordered) (hL : Layout guestC p Γ) {oe oc o : Obj} (hoe : oe ∈ Γ) (hoet : oe.ty = tEV)
    (hoc : oc ∈ Γ) (hoct : oc.ty = tCK) (ho : o ∈ Γ) {k : Nat} (hk : k < o.size)
    (hE : o.ty ≠ tEV ∨ k ∉ [64, 72, 192, 184, 160, 120, 128])
    (hC : o.ty ≠ tCK ∨ k ≠ 32) :
    ¬ excCells oe.base oc.base (o.base + BitVec.ofNat 64 k) := by
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have key : ∀ k', k' ∈ [64, 72, 192, 184, 160, 120, 128] →
      o.base + BitVec.ofNat 64 k ≠ oe.base + BitVec.ofNat 64 k' := by
    intro k' hk'
    have hk'' : k' < 280 := by simp at hk'; omega
    refine ne_cells hord hL ho hoe hk (by omega) ?_
    rcases hE with h | h
    · exact Or.inl (by rw [hoet]; exact h)
    · exact Or.inr (fun he => h (he ▸ hk'))
  have keyC : o.base + BitVec.ofNat 64 k ≠ oc.base + BitVec.ofNat 64 32 := by
    refine ne_cells hord hL ho hoc hk (by omega) ?_
    rcases hC with h | h
    · exact Or.inl (by rw [hoct]; exact h)
    · exact Or.inr h
  rintro (h | h | h | h | h | h | h | h)
  · exact key 64 (by simp) h
  · exact key 72 (by simp) h
  · exact key 192 (by simp) h
  · exact key 184 (by simp) h
  · exact key 160 (by simp) h
  · exact key 120 (by simp) h
  · exact key 128 (by simp) h
  · exact keyC h

/-- **`frame_exception`'s footprint keeps the extension** (across the summary's heap step). -/
theorem chainE_exc {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {Γ Γ' : Gam} {s t : State σ}
    {p p' : Ptrs} (hp : ptrsOf s = some p) (hpt : ptrsOf t = some p') (hord : p.Ordered)
    (hord' : p'.Ordered) (hL : Layout guestC p Γ) (hL' : Layout guestC p' Γ') (hmo : p.Mono p')
    (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') {fs : List Frame}
    (hch : ChainL guestC tEV tCK Γ s fs) {oe oc : Obj} (hoe : oe ∈ Γ) (hoet : oe.ty = tEV)
    (hoc : oc ∈ Γ) (hoct : oc.ty = tCK)
    (hmod : ModifiesOnly (excCells oe.base oc.base) s.memory t.memory)
    (h : ChainE GP GR Γ s fs) : ChainE GP GR Γ' t fs := by
  refine chainE_move hp hpt hord hord' hL hL' hmo hext hnf (fun f hf => ?_) (fun f hf j hj => ?_) h
  · obtain ⟨of, hof, hofb, hoft⟩ := ev_obj hch hf
    have hszf := ev_size hF hL hof hoft
    refine ⟨fun j hj => ?_, fun o ho hot i hi hp => ?_⟩
    · have hj' : 8 * j = 88 ∨ 8 * j = 112 ∨ 8 * j = 136 ∨ 8 * j = 208 ∨ 8 * j = 224 := by
        simp only [evXSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj
        rcases hj with rfl | rfl | rfl | rfl | rfl <;> simp
      rw [← hofb]
      refine fld_mod hmod (notExcCellsX hF hord hL hoe hoet hoc hoct hof (by omega)
        (Or.inr (by simp; omega)) (Or.inl (by rw [hoft]; decide)))
    · have hot' : o.ty ≠ tEV ∧ o.ty ≠ tCK := by
        simp only [msgTys, blockTys, List.cons_append, List.nil_append, List.mem_cons,
          List.mem_nil_iff, or_false] at hot
        rcases hot with h | h | h | h | h | h | h | h | h | h | h | h | h | h <;> rw [h] <;> decide
      have hi' : 8 * i < o.size := by unfold Obj.HasSlot at hi; omega
      have hk := hmod _ (notExcCellsX hF hord hL hoe hoet hoc hoct ho hi' (Or.inl hot'.1)
        (Or.inl hot'.2))
      unfold rd Obj.cell
      rw [hk]
  · obtain ⟨ocf, hocf, hocfb, hocft⟩ := ck_obj hch hf
    have hszc := ck_size hF hL hocf hocft
    have hj' : j ≤ 80 ∧ j ≠ 32 := by
      simp only [ckXSlots, ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark,
        ckOutStart, ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hj
      omega
    rw [← hocfb]
    exact fld_mod hmod (notExcCellsX hF hord hL hoe hoet hoc hoct hocf (by omega)
      (Or.inl (by rw [hocft]; decide)) (Or.inr hj'.2))

/-- **`frame_exception`'s footprint keeps the block cells.** -/
theorem bkeep_exc {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {s t : State σ} {p : Ptrs}
    (hord : p.Ordered) (hL : Layout guestC p Γ) {oe oc : Obj} (hoe : oe ∈ Γ) (hoet : oe.ty = tEV)
    (hoc : oc ∈ Γ) (hoct : oc.ty = tCK)
    (hmod : ModifiesOnly (excCells oe.base oc.base) s.memory t.memory) : BKeep guestC Γ s t := by
  refine bkeep_of_keepTys fun o ho hty k hk hpr => ?_
  have hot' : o.ty ≠ tEV ∧ o.ty ≠ tCK := ⟨fun h => hF.evK (h ▸ hty), fun h => hF.ckK (h ▸ hty)⟩
  have hi' : 8 * k < o.size := by unfold Obj.HasSlot at hk; omega
  have := hmod _ (notExcCellsX hF hord hL hoe hoet hoc hoct ho hi' (Or.inl hot'.1) (Or.inl hot'.2))
  unfold rd Obj.cell
  rw [this]

/-- `frame_exception`'s exact memory effect (`exc_spec`) keeps the block cells. -/
theorem bkeep_exc_spec {H : Hooks σ} (hFr : FrameCfg guestC H tEV tCK) {Γ : Gam} {s t : State σ}
    {r : PanSemResultExact 64} {fs : List Frame} {vs : List (ValueHOL 64)} (hG : G guestC H Γ s)
    (hch : ChainL guestC tEV tCK Γ s fs)
    (hE : Good (some r) → (∃ x, gword s (nm "evm_empty") = some x) →
      ∃ e c err E S, vs = [.val (.word err)] ∧ gword s nmEv = some e ∧ gword s nmCC = some c ∧
        gword s (nm "evm_empty") = some E ∧ r = .returned (.val (.word 0)) ∧
        t.globals = s.globals ∧
        t.memory = upd (excMem s.memory e err S E) (c + BitVec.ofNat 64 32) 1)
    (hg : Good (some r)) : BKeep guestC Γ s t := by
  have ⟨p, hps, hord, hL, _, _, hGl, _⟩ := hG
  obtain ⟨k0, hk0⟩ := hFr.empty
  obtain ⟨v0, hv0, -⟩ := hGl _ k0 hk0
  obtain ⟨e, c, err, E, S, -, he, hcc, -, -, hglob, hmem⟩ := hE hg ⟨v0, hv0⟩
  obtain ⟨e', c', rest, hfs, he', hc', hic⟩ := hch.chain
  rw [he, Option.some.injEq] at he'
  rw [hcc, Option.some.injEq] at hc'
  subst he' hc'
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hmod : ModifiesOnly (excCells oe.base oc.base) s.memory t.memory := by
    rw [hmem]; exact excMem_mod _ _ _ _ _ _
  exact bkeep_exc hFr hord hL hoe hoet hoc hoct hmod

/-- **`frame_exception`'s entry of the extended bundle.** -/
theorem exc_jSpecX {H : Hooks σ} (hX : X.code.lookup = guestCode)
    (hFr : FrameCfg guestC H tEV tCK) (M : Nat) :
    JSpec σ X guestC H (nm "frame_exception")
      (fun vs s Γ => vs.length = 1 ∧ PreInvX guestC tEV tCK GP GR M vs s Γ)
      (QExcX guestC tEV tCK GP GR) := by
  refine FunSpec.mono (FunSpec.and (exc_sumSpec hX hFr M) (exc_spec hX)) ?_
  intro vs s r t ⟨hR, hE⟩ hg _ Γ hG ⟨hlen, ⟨⟨fs, hch, hEx⟩, hΦ⟩, hJ⟩
  have ⟨p, hps, hord, hL, _, _, hGl, _⟩ := hG
  obtain ⟨Γ', q, q', hc, hq⟩ := hR hg Γ hG ⟨p, hps, argsOK_any (any_sg1 []) hlen⟩ ⟨⟨fs, hch⟩, hΦ⟩
  obtain rfl : q = p := Option.some.inj (hc.1.symm.trans hps)
  obtain ⟨k0, hk0⟩ := hFr.empty
  obtain ⟨v0, hv0, -⟩ := hGl _ k0 hk0
  obtain ⟨e, c, err, E, S, -, he, hcc, -, -, hglob, hmem⟩ := hE hg ⟨v0, hv0⟩
  obtain ⟨e', c', rest, hfs, he', hc', hic⟩ := hch.chain
  rw [he, Option.some.injEq] at he'
  rw [hcc, Option.some.injEq] at hc'
  subst he' hc'
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hmod : ModifiesOnly (excCells oe.base oc.base) s.memory t.memory := by
    rw [hmem]; exact excMem_mod _ _ _ _ _ _
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -⟩ := hc
  have ⟨q2, hq2, hord2, hL2, _⟩ := hG'
  obtain rfl : q2 = q' := Option.some.inj (hq2.symm.trans hpt)
  have hE' := chainE_exc hFr hpu hpt hord hord2 hL hL2 hmo hext hnf hch hoe hoet hoc hoct hmod hEx
  have hck : ∀ f ∈ fs, ∀ j ∈ ckChainSlots, fld t.memory f.2 j = fld s.memory f.2 j := by
    intro f hf j hj
    obtain ⟨ocf, hocf, hocfb, hocft⟩ := ck_obj hch hf
    have hszc := ck_size hFr hL hocf hocft
    have hj' : j ≤ 80 ∧ j ≠ 32 := by
      simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
        ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hj
      omega
    rw [← hocfb]
    exact fld_mod hmod (notExcCellsX hFr hord hL hoe hoet hoc hoct hocf (by omega)
      (Or.inl (by rw [hocft]; decide)) (Or.inr hj'.2))
  have hof : ChainOf t fs := ⟨oe.base, oc.base, rest, hfs, by rw [gword_congr hglob]; exact he,
    by rw [gword_congr hglob]; exact hcc, isChain_keep hic hck⟩
  refine ⟨Γ', hG', fun v hv => ?_, fun v hv => jrNZ_congr hglob hJ,
    fun v hv => keepH_of_run hpu hpt hmo hext hnf hL2 hord2,
    fun v hv => rootK_of_same hch.chain hof,
    fun v hv => bkeep_exc hFr hord hL hoe hoet hoc hoct hmod⟩
  obtain ⟨⟨fs2, hch2⟩, hΦ2⟩ := hq v hv
  have hfe := chainOf_unique hch2.chain hof
  subst fs2
  exact ⟨⟨fs, hch2, hE'⟩, hΦ2⟩

/-! ## `frame_epilogue` -/

/-- The facts carried through `frame_epilogue`, with the extension. -/
def KX (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (fs : List Frame) (u : State σ) : Prop :=
  ∃ Γ', G guestC H Γ' u ∧ ChainL guestC tEV tCK Γ' u fs ∧ Phi u ≤ Phi s0 ∧ JrNZ u ∧
    ChainE GP GR Γ' u fs ∧ KeepH guestC Γ0 Γ' s0 u ∧ BKeep guestC Γ0 s0 u

theorem kX_locals {H : Hooks σ} (hH : HooksLawful guestC H) {Γ0 : Gam} {s0 : State σ} {fs : List Frame}
    {u : State σ} (h : KX H Γ0 s0 fs u) (l : Locs) : KX H Γ0 s0 fs { u with locals := l } := by
  obtain ⟨Γ', hG, hch, hΦ, hJ, hE, hk, hb⟩ := h
  refine ⟨Γ', (G_locFree hH u l u.clock).mpr hG,
    chainL_congr (s := u) (s' := { u with locals := l }) rfl rfl hch, ?_, jrNZ_locals hJ l,
    chainE_congr (s := u) rfl rfl hE, keepH_congr rfl rfl hk, bkeep_congr rfl rfl hb⟩
  rw [phi_locFree.loc]; exact hΦ

/-- One call of `state_restore` from the entry state, with the extension. -/
theorem epi_srCallX {H : Hooks σ} (hFr : FrameCfg guestC H tEV tCK) {s0 : State σ} {Γ : Gam}
    (hG : G guestC H Γ s0) {fs : List Frame} (hch : ChainL guestC tEV tCK Γ s0 fs)
    (hE0 : ChainE GP GR Γ s0 fs)
    (hJ0 : JrNZ s0) {vs : List (ValueHOL 64)} (hvs : vs.length = 1) {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelA guestC H srSig (fun _ s Γ => ReqOK srCaps s Γ)
      (fun _ s Γ a => CapPW srCaps s Γ a) (fun _ _ _ _ _ _ => True) vs
      (callEntryStateHOLFinite s0 callee) r st)
    (hfp : st.globals.lookup gFrame = (callEntryStateHOLFinite s0 callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    KX H Γ s0 fs st := by
  have hH := hFr.hooks
  have hGe : G guestC H Γ (callEntryStateHOLFinite s0 callee) :=
    (G_locFree hH s0 _ _).mpr hG
  have hJe : JrNZ (callEntryStateHOLFinite s0 callee) := jrNZ_congr rfl hJ0
  have ⟨p, hp, _⟩ := hGe
  obtain ⟨Γ', p1, p2, hc, -⟩ := hR hg hna Γ hGe
    ⟨p, hp, argsOK_any (by simp [srSig]) (by simp [srSig, hvs])⟩ (reqOK_jr srCaps_jr hGe hJe)
  have hc' := sumCore_pw (PW' := fun a => ProtCell guestC Γ a ∧
    PWtop tEV tCK [] vs (callEntryStateHOLFinite s0 callee) Γ a) hc
    fun a ⟨hpc, hw⟩ => ⟨hpc, (srCaps_pw hGe hw).1⟩
  have hfp' : p2.fp = p1.fp := fpQ_of_fp hfp p1 p2 hc.1 hc.2.1
  obtain ⟨hcl, hΦ⟩ := chain_of_sumCoreNF hFr (by simp [srSig]) (by decide) hGe hc' hfp'
    (chainL_congr (s := s0) (s' := callEntryStateHOLFinite s0 callee) rfl rfl hch)
  obtain ⟨ef, cf, rest, hfs, hef, -, -⟩ := hch.chain
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch (by rw [hfs]; exact List.mem_cons_self ..)
  have hE1 : ChainE GP GR Γ' st fs :=
    chainE_sumCoreM hFr xCfg_guest (by decide) (ks := []) (by simp) (by simp) hGe hc
      (fun a ha => absurd ha (argCells_any (by simp [srSig])))
      (fun a hpc hw => srCaps_pw hGe hw) hef ⟨oe, hoe, hoeb, hoet⟩ (fun f hf => hch.objs f hf)
      (chainE_congr (s := s0) rfl rfl hE0)
  obtain ⟨hc1, hc2, hc3, hc4, hc5, hc6, -⟩ := id hc
  obtain ⟨q2, hq2, hordq, hLq, -⟩ := hc6
  obtain rfl : q2 = p2 := Option.some.inj (hq2.symm.trans hc2)
  have hKe : KeepH guestC Γ Γ' s0 st :=
    keepH_congr rfl rfl (keepH_of_run (s := s0) (by rw [← hc1]; rfl) hc2 hc3 hc4 hc5 hLq hordq)
  have hBe : BKeep guestC Γ s0 st := by
    obtain ⟨p', hp', hordp, hLp, -⟩ := id hGe
    exact bkeep_congr (s := callEntryStateHOLFinite s0 callee) rfl rfl
      (bkeep_of_sumCore' hGe (fun a ha => absurd ha (argCells_any (by simp [srSig]))) hc
        (fun a ⟨_, hw⟩ => not_kCell_of_pwtopM (vs := []) hordp hLp (srCaps_pw (vs := []) hGe hw)))
  refine ⟨Γ', hc.2.2.2.2.2.1, hcl, ?_, jrNZ_sumCore (by decide) (by decide) hc hJe, hE1, hKe, hBe⟩
  rw [phi_locFree.entry] at hΦ; exact hΦ

/-- **`frame_epilogue`'s entry of the extended bundle.** -/
theorem epi_jSpecX {H : Hooks σ} (hX : X.code.lookup = guestCode) (hFr : FrameCfg guestC H tEV tCK)
    (hsrC : CSumm σ X guestC H (nm "state_restore") srSig srCaps)
    (srFp : KeepsFp σ X (nm "state_restore")) (M : Nat) :
    JSpec σ X guestC H (nm "frame_epilogue")
      (fun vs s Γ => vs = [] ∧ PreInvX guestC tEV tCK GP GR M vs s Γ)
      (QEpiX guestC tEV tCK GP GR) := by
  have hH := hFr.hooks
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨_, ⟨⟨fs, hch, hE0⟩, _⟩, hJ0⟩
  rw [hX] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_epi hl
  have hsr := FunSpec.and (csumm_fs hsrC) srFp
  let KQ : Option (PanSemResultExact 64) → State σ → Prop := fun ro t =>
    (∀ r, ro = some r → ¬ Abortive r) → KX H Γ s0 fs t
  have key : ∀ (s : State σ), s = s0 → ∀ vs, evs s [gLoad "cur_cont" 24] = some vs →
      ∀ callee r st, (SumRelA guestC H srSig (fun _ s Γ => ReqOK srCaps s Γ)
        (fun _ s Γ a => CapPW srCaps s Γ a) (fun _ _ _ _ _ _ => True) vs
        (callEntryStateHOLFinite s callee) r st ∧
        (Good (some r) → ¬ Abortive r → st.globals.lookup gFrame =
          (callEntryStateHOLFinite s callee).globals.lookup gFrame)) →
      Good (some r) → ¬ Abortive r → KX H Γ s0 fs st := by
    intro s hs vs hvs callee r st ⟨hR, hfpR⟩ hg' hna'
    subst hs
    exact epi_srCallX hFr hG hch hE0 hJ0 (evs_one hvs) hR (hfpR hg' hna') hg' hna'
  have H0 : HoareG σ X (fun u => u = s0) epiBody (fun ro t => KQ ro t) := by
    refine hoareG_seq (R := KQ) ?_ (fun r t _ _ _ h => h) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_callD hsr ?_ ?_
        · intro s _ ⟨hs, _⟩ vs hvs callee v st hR _ _
          exact kX_locals hH (key s hs vs hvs callee _ st hR (by simp [Good])
            (not_abortive_ret v)) _
        · intro s _ ⟨hs, _⟩ vs hvs callee r st hR _ habn hpr
          exact kX_locals hH (key s hs vs hvs callee r st hR (good_of_abn habn) (hpr r rfl)) _
      · refine hoareG_skip fun s _ ⟨hs, _⟩ _ => ?_
        subst hs
        exact ⟨Γ, hG, hch, le_refl _, hJ0, hE0, keepH_refl rfl, bkeep_refl _ _ _⟩
    · refine hoareG_return fun u _ hu v _ _ => ?_
      exact kX_locals hH (hu fun r h => by cases h) _
  have hKX := H0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at hKX
  obtain ⟨Γ', hG', hch', hΦ', hJ', hE', hKe, hBe⟩ := hKX fun r' h => by cases h; exact hna
  exact ⟨Γ', hG', fun v _ => ⟨⟨fs, hch', hE'⟩, hΦ'⟩, fun v _ => hJ', fun v _ => hKe,
    fun v _ => rootK_of_same hch.chain hch'.chain, fun v _ => hBe⟩

/-! ## The guest bundle on the extension -/

/-- **The extended guest bundle** from the open entries: `op_dispatch` (summary and cost),
`finish_child` (`fin_jSpec` / `fin_condCost` at `GP` / `GR`), and `state_restore`'s `KeepsFp` fact
and cost. -/
theorem bundle_ofX {H : Hooks σ} {M Bop Bfin Bsr : Nat} (hX : X.code.lookup = guestCode)
    (hFr : FrameCfg guestC H tEV tCK) (hsrC : CSumm σ X guestC H (nm "state_restore") srSig srCaps)
    (opSum : JSpec σ X guestC H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (opCost : CondCost σ X guestC H (nm "op_dispatch") (sg1 []) (PreOpX guestC tEV tCK GP GR M)
      Bop)
    (finSum : JSpec σ X guestC H (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR))
    (finCost : CondCost σ X guestC H (nm "finish_child") (sg0 [])
      (PreFinX guestC tEV tCK GP GR M) Bfin)
    (srFp : KeepsFp σ X (nm "state_restore")) (srCost : CalleeCost σ X (nm "state_restore") Bsr) :
    BundleX σ X guestC H tEV tCK M GP GR Bop 2 (max (1 + Bsr + 0) 0 + 0) Bfin :=
  ⟨hX, hFr.hooks, opSum, opCost, exc_jSpecX hX hFr M, exc_cost hX,
    epi_jSpecX hX hFr hsrC srFp M, Spec.Inv.calleeCostP_of_calleeCost (epi_cost hX srCost),
    finSum, finCost⟩

/-- **The scoring shape on the extension** from the open entries. -/
theorem run_frames_condCost_ofX {H : Hooks σ} {M Bop Bfin Bsr : Nat}
    (hX : X.code.lookup = guestCode) (hFr : FrameCfg guestC H tEV tCK)
    (hsrC : CSumm σ X guestC H (nm "state_restore") srSig srCaps)
    (opSum : JSpec σ X guestC H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (opCost : CondCost σ X guestC H (nm "op_dispatch") (sg1 []) (PreOpX guestC tEV tCK GP GR M)
      Bop)
    (finSum : JSpec σ X guestC H (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFinX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR))
    (finCost : CondCost σ X guestC H (nm "finish_child") (sg0 [])
      (PreFinX guestC tEV tCK GP GR M) Bfin)
    (srFp : KeepsFp σ X (nm "state_restore")) (srCost : CalleeCost σ X (nm "state_restore") Bsr) :
    CondCost σ X guestC H (nm "run_frames") (sg0 []) (PreInvX guestC tEV tCK GP GR M)
      (rfB M Bop 2 (max (1 + Bsr + 0) 0 + 0) Bfin) :=
  run_frames_condCostX (bundle_ofX hX hFr hsrC opSum opCost finSum finCost srFp srCost)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.exc_jSpecX
#print axioms InitECandidate.Solver.MemSafe.Frames.epi_jSpecX
#print axioms InitECandidate.Solver.MemSafe.Frames.bundle_ofX
#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_condCost_ofX
