import InitECandidate.Solver.MemSafe.Frames.RfPost
import InitECandidate.Solver.MemSafe.Frames.BundleX
import InitECandidate.Solver.MemSafe.Frames.BKeep

/-!
# `run_frames`' post-state from the extended bundle

`RFJK Γ0 s0` is `run_frames`' loop invariant with the entry typing `Γ0` and state `s0` as ghosts:
`G`, the extended chain, `JrNZ`, and `KeepH` from the entry. Every step spec in `BundleX` carries a
`KeepH`, so the invariant holds along the loop (`rfHypsK`).

At the kind-0 exit the chain is the root frame alone, whose record has a null parent (`RootCk`), so
the assignments `ev = PARENT; cur_cont = PARENT_CONT` keep `G` (`G_evcc_null`, `rfExitK`).

**`run_frames_postX`**: a return from `run_frames`, from `RFInvX`, ends in `RFXK Γ0 s0`: `G` for a
typing `Γ` with `KeepH` from the entry, `JrNZ`, and null `ev` / `cur_cont`.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **The loop invariant with `KeepH` from the entry.** -/
def RFJK (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (Γ0 : Gam) (s0 s : State σ) : Prop :=
  (∃ Γ, G C H Γ s ∧ ChainX C tEV tCK P R Γ s ∧ KeepH C Γ0 Γ s0 s ∧ RootK s0 s) ∧ JrNZ s ∧
    BKeep C Γ0 s0 s ∧ ∃ p, ptrsOf s0 = some p ∧ p.Ordered

/-- **What holds after the loop.** -/
def RFXK (C : Cfg) (H : Hooks σ) (tEV : Nat) (P : Gam → Mem → Ptrs → Frame → Prop) (Γ0 : Gam)
    (s0 t : State σ) : Prop :=
  (∃ Γ, G C H Γ t ∧ KeepH C Γ0 Γ s0 t ∧
    ∀ fs0, ChainOf s0 fs0 → ∀ e c, fs0.getLast? = some (e, c) → (∃ o ∈ Γ, o.base = e ∧ o.ty = tEV) ∧
      ∀ p, ptrsOf t = some p → P Γ t.memory p (e, c)) ∧ JrNZ t ∧
    (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧
    (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax) ∧
    (∀ fs0, ChainOf s0 fs0 → ∃ e c, fs0.getLast? = some (e, c) ∧ MarkV t.memory e) ∧
    BKeep C Γ0 s0 t

theorem rfJK_locFree {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Γ0 : Gam}
    {s0 : State σ} : LocFree (σ := σ) (RFJK C H tEV tCK P R Γ0 s0) := fun s l c =>
  ⟨fun ⟨⟨Γ, h1, h2, h3, h5⟩, h4, h6, h7⟩ => ⟨⟨Γ, (G_locFree hH s l c).mp h1, (chainX_locFree s l c).mp h2,
      keepH_congr rfl rfl h3, rootK_congr rfl rfl rfl rfl h5⟩, (jrNZ_locFree s l c).mp h4,
      bkeep_congr rfl rfl h6, h7⟩,
    fun ⟨⟨Γ, h1, h2, h3, h5⟩, h4, h6, h7⟩ => ⟨⟨Γ, (G_locFree hH s l c).mpr h1, (chainX_locFree s l c).mpr h2,
      keepH_congr rfl rfl h3, rootK_congr rfl rfl rfl rfl h5⟩, (jrNZ_locFree s l c).mpr h4,
      bkeep_congr rfl rfl h6, h7⟩⟩

theorem rfXK_locFree {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {Γ0 : Gam} {s0 : State σ} :
    LocFree (σ := σ) (RFXK C H tEV P Γ0 s0) := fun s l c =>
  ⟨fun ⟨⟨Γ, h1, h2, h7⟩, h3, h4, h5, h6, h8⟩ => ⟨⟨Γ, (G_locFree hH s l c).mp h1, keepH_congr rfl rfl h2,
      fun fs0 hf e c' hl => ⟨(h7 fs0 hf e c' hl).1, fun p hp =>
        (h7 fs0 hf e c' hl).2 p ((ptrsOf_congr rfl).trans hp)⟩⟩,
      (jrNZ_locFree s l c).mp h3, h4, h5, h6, bkeep_congr rfl rfl h8⟩,
    fun ⟨⟨Γ, h1, h2, h7⟩, h3, h4, h5, h6, h8⟩ => ⟨⟨Γ, (G_locFree hH s l c).mpr h1, keepH_congr rfl rfl h2,
      fun fs0 hf e c' hl => ⟨(h7 fs0 hf e c' hl).1, fun p hp =>
        (h7 fs0 hf e c' hl).2 p ((ptrsOf_congr rfl).trans hp)⟩⟩,
      (jrNZ_locFree s l c).mpr h3, h4, h5, h6, bkeep_congr rfl rfl h8⟩⟩

/-- Compose `KeepH` across a step from a `G` state. -/
theorem keepH_step {C : Cfg} {H : Hooks σ} {Γ0 Γ Γ' : Gam} {s0 s t : State σ} (hG : G C H Γ s)
    (h1 : KeepH C Γ0 Γ s0 s) (h2 : KeepH C Γ Γ' s t) : KeepH C Γ0 Γ' s0 t := by
  obtain ⟨p, hp, hord, -⟩ := hG
  exact h1.trans h2 hp hord

theorem chainX_ex {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Γ : Gam} {s : State σ}
    (h : ChainX C tEV tCK P R Γ s) : ∃ fs, ChainOf s fs :=
  by obtain ⟨fs, h, -⟩ := h; exact ⟨fs, h.chain⟩

/-- **The callee specifications at `RFJK`.** -/
theorem rfHypsK {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (B : BundleX σ X C H tEV tCK M P R Bop Bexc Bepi Bfin)
    (hreg : ∀ t ∈ keepTys, (C.ty t).region = .heap) (Γ0 : Gam) (s0 : State σ) :
    RFHyps σ X (RFJK C H tEV tCK P R Γ0 s0) Phi M Bop Bexc Bepi Bfin := by
  have gp : ∀ {Γ : Gam} {s : State σ}, G C H Γ s → ∃ p', ptrsOf s = some p' :=
    fun ⟨p, hp, _⟩ => ⟨p, hp⟩
  refine ⟨by rw [B.code]; exact code_run_frames, rfJK_locFree B.hooks, phi_locFree, ?_, ?_,
    B.excCost, ?_, ?_, ?_, ?_, ?_⟩
  · exact calleeCostP_of_condCost B.opCost (any_sg1 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch, _⟩, hJ, _⟩, hΦ, hrd⟩ => ⟨hlen, Γ, hG, ⟨hch, hΦ, hrd⟩, hJ⟩
  · refine FunSpec.mono B.opSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch, hk, hrt⟩, hJ, hb, hp0⟩ hΦ hrd
    refine ⟨fun v hv => ?_, fun v hv => ?_⟩
    · obtain ⟨Γ', hG', ⟨hq1, -⟩, hj1, -, hk1, -, hr1, -, hb1, -⟩ :=
        hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ, hrd⟩, hJ⟩
      exact let h := hq1 v hv; ⟨⟨⟨Γ', hG', h.1, keepH_step hG hk (hk1 v hv),
        rootK_trans hrt (hr1 v hv) (chainX_ex hch)⟩, hj1 v hv,
        bkeep_step hreg hp0 (gp hG) hk hb (hb1 v hv), hp0⟩, h.2⟩
    · obtain ⟨Γ', hG', ⟨-, hq2⟩, -, hj2, -, hk2, -, hr2, -, hb2⟩ :=
        hR hg (hv ▸ not_abortive_evm v) Γ hG ⟨hlen, ⟨hch, hΦ, hrd⟩, hJ⟩
      exact let h := hq2 v hv; ⟨⟨⟨Γ', hG', h.1, keepH_step hG hk (hk2 v hv),
        rootK_trans hrt (hr2 v hv) (chainX_ex hch)⟩, hj2 v hv,
        bkeep_step hreg hp0 (gp hG) hk hb (hb2 v hv), hp0⟩, h.2⟩
  · refine FunSpec.mono B.excSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch, hk, hrt⟩, hJ, hb, hp0⟩ hΦ v hv
    obtain ⟨Γ', hG', hq, hj, hk1, hr1, hb1⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ⟩, hJ⟩
    exact let h := hq v hv; ⟨⟨⟨Γ', hG', h.1, keepH_step hG hk (hk1 v hv),
      rootK_trans hrt (hr1 v hv) (chainX_ex hch)⟩, hj v hv,
      bkeep_step hreg hp0 (gp hG) hk hb (hb1 v hv), hp0⟩, h.2⟩
  · exact calleeCostP_of_condCost B.epiCost (any_sg0 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch, _⟩, hJ, _⟩, hΦ⟩ => ⟨by rw [hlen]; rfl, Γ, hG, ⟨hch, hΦ⟩, hJ⟩
  · refine FunSpec.mono B.epiSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch, hk, hrt⟩, hJ, hb, hp0⟩ hΦ v hv
    obtain ⟨Γ', hG', hq, hj, hk1, hr1, hb1⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ⟩, hJ⟩
    exact let h := hq v hv; ⟨⟨⟨Γ', hG', h.1, keepH_step hG hk (hk1 v hv),
      rootK_trans hrt (hr1 v hv) (chainX_ex hch)⟩, hj v hv,
      bkeep_step hreg hp0 (gp hG) hk hb (hb1 v hv), hp0⟩, h.2⟩
  · exact calleeCostP_of_condCost B.finCost (any_sg0 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch, _⟩, hJ, _⟩, hΦ, hk⟩ => ⟨by rw [hlen]; rfl, Γ, hG, ⟨hch, hΦ, hk⟩, hJ⟩
  · refine FunSpec.mono B.finSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch, hk, hrt⟩, hJ, hb, hp0⟩ hΦ hkd
    refine ⟨fun v hv => ?_, fun v hv => ?_⟩
    · obtain ⟨Γ', hG', ⟨hq1, -⟩, hj1, -, hk1, -, hr1, -, hb1, -⟩ :=
        hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ, hkd⟩, hJ⟩
      exact let h := hq1 v hv; ⟨⟨⟨Γ', hG', h.1, keepH_step hG hk (hk1 v hv),
        rootK_trans hrt (hr1 v hv) (chainX_ex hch)⟩, hj1 v hv,
        bkeep_step hreg hp0 (gp hG) hk hb (hb1 v hv), hp0⟩, h.2⟩
    · obtain ⟨Γ', hG', ⟨-, hq2⟩, -, hj2, -, hk2, -, hr2, -, hb2⟩ :=
        hR hg (hv ▸ not_abortive_evm v) Γ hG ⟨hlen, ⟨hch, hΦ, hkd⟩, hJ⟩
      exact let h := hq2 v hv; ⟨⟨⟨Γ', hG', h.1, keepH_step hG hk (hk2 v hv),
        rootK_trans hrt (hr2 v hv) (chainX_ex hch)⟩, hj2 v hv,
        bkeep_step hreg hp0 (gp hG) hk hb (hb2 v hv), hp0⟩, h.2⟩

/-- **`G` after assigning null values to `ev` and `cur_cont`.** -/
theorem G_evcc_null {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hD : DrvCfg C H tEV tCK)
    (hgE : C.GT.lookup nmEv = some (.nptr tEV)) (hgC : C.GT.lookup nmCC = some (.nptr tCK))
    {Γ : Gam} {s t : State σ} (hG : G C H Γ s) (hm : t.memory = s.memory)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hgo : ∀ g, g ≠ nmEv → g ≠ nmCC → t.globals.lookup g = s.globals.lookup g)
    (hev : ∃ e, gword t nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword t nmCC = some c ∧ c.toNat < nullMax) : G C H Γ t := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hpt : ptrsOf t = some p := by
    rw [← hp]
    unfold ptrsOf gword
    rw [hgo gHeap (by decide) (by decide), hgo gFrame (by decide) (by decide),
      hgo gScratch (by decide) (by decide)]
  refine ⟨p, hpt, hord, hL, by rw [hm]; exact hF, by rw [hm]; exact hT, ?_, fun o ho => ?_⟩
  · intro g k hk
    by_cases h1 : g = nmEv
    · subst h1
      rw [hgE] at hk
      cases hk
      obtain ⟨e, he, hs⟩ := hev
      exact ⟨e, he, Or.inl hs⟩
    by_cases h2 : g = nmCC
    · subst h2
      rw [hgC] at hk
      cases hk
      obtain ⟨c, hc, hs⟩ := hcc
      exact ⟨c, hc, Or.inl hs⟩
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    refine ⟨v, ?_, hf⟩
    unfold gword at hv ⊢
    rw [hgo g h1 h2]
    exact hv
  · exact hD.hookGlob Γ s t o (hW o ho) hm hd hbe fun g _ h1 h2 => hgo g h1 h2

/-- **The kind-0 exit.** -/
theorem rfExitK {C : Cfg} {H : Hooks σ} {tEV tCK M : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} (hD : DrvCfg C H tEV tCK)
    (hgE : C.GT.lookup nmEv = some (.nptr tEV)) (hgC : C.GT.lookup nmCC = some (.nptr tCK))
    (hJr : ∀ g, g = nmEv ∨ g = nmCC → g ∉ jrGs)
    (hMV : ∀ Γ m p f, P Γ m p f → MarkV m f.1)
    (Γ0 : Gam) (s0 : State σ) :
    RFExit (RFJK C H tEV tCK P R Γ0 s0) (RFXK C H tEV P Γ0 s0) Phi M := by
  have hH := hD.fc.hooks
  refine ⟨rfXK_locFree hH, ?_⟩
  rintro s c ⟨⟨Γ, hG, ⟨fs, hch, hx⟩, hk, hroot⟩, hJ, hb, -⟩ - hc hk0
  obtain ⟨e, c', rest, hfs, he, hc', hic⟩ := hch.chain
  rw [hc, Option.some.injEq] at hc'
  subst hc'
  subst hfs
  obtain rfl : rest = [] := by
    cases hic with
    | base _ => rfl
    | step h _ _ => exact absurd hk0 h
  have hrootCk : RootCk s.memory c := by
    cases hic with
    | base h => exact h
    | step h _ _ => exact absurd hk0 h
  obtain ⟨-, hp0, hp8⟩ := hrootCk
  have hgl : ∀ g, g ≠ nmEv → g ≠ nmCC →
      (setKvarHOLFinite .global nmCC (.val (.word (rd s.memory (c + BitVec.ofNat 64 8))))
        (setKvarHOLFinite .global nmEv (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s)).globals.lookup g =
      s.globals.lookup g := by
    intro g h1 h2
    show ((s.globals.update (nmEv, _)).update (nmCC, _)).lookup g = _
    rw [lookup_update_ne _ _ (Ne.symm h2), lookup_update_ne _ _ (Ne.symm h1)]
  have hgc : gword (setKvarHOLFinite .global nmCC (.val (.word (rd s.memory (c + BitVec.ofNat 64 8))))
      (setKvarHOLFinite .global nmEv (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s)) nmCC =
      some (rd s.memory (c + BitVec.ofNat 64 8)) := by
    refine gword_of ?_
    show ((s.globals.update (nmEv, _)).update (nmCC, _)).lookup nmCC = _
    rw [lookup_update_self]
  have hge : gword (setKvarHOLFinite .global nmCC (.val (.word (rd s.memory (c + BitVec.ofNat 64 8))))
      (setKvarHOLFinite .global nmEv (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s)) nmEv =
      some (rd s.memory (c + BitVec.ofNat 64 0)) := by
    refine gword_of ?_
    show ((s.globals.update (nmEv, _)).update (nmCC, _)).lookup nmEv = _
    rw [lookup_update_ne _ _ (by decide), lookup_update_self]
  have hevS : ∃ e', gword (setKvarHOLFinite .global nmCC
      (.val (.word (rd s.memory (c + BitVec.ofNat 64 8))))
      (setKvarHOLFinite .global nmEv (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s)) nmEv =
      some e' ∧ e'.toNat < nullMax := ⟨_, hge, hp0⟩
  have hccS : ∃ c'', gword (setKvarHOLFinite .global nmCC
      (.val (.word (rd s.memory (c + BitVec.ofNat 64 8))))
      (setKvarHOLFinite .global nmEv (.val (.word (rd s.memory (c + BitVec.ofNat 64 0)))) s)) nmCC =
      some c'' ∧ c''.toNat < nullMax := ⟨_, hgc, hp8⟩
  refine ⟨⟨Γ, G_evcc_null hD hgE hgC hG rfl rfl rfl hgl hevS hccS, ?_, ?_⟩, ?_, hevS, hccS, ?_, ?_⟩
  · refine fun p p' hp hp' hord => hk p p' hp ?_ hord
    rw [← hp']
    unfold ptrsOf gword
    rw [hgl gHeap (by decide) (by decide), hgl gFrame (by decide) (by decide),
      hgl gScratch (by decide) (by decide)]
  · intro fs0 hfs0 e' c' hl'
    have h1 : fs0.getLast? = some (e, c) := (hroot fs0 [(e, c)] hfs0 hch.chain).symm
    rw [h1, Option.some.injEq, Prod.mk.injEq] at hl'
    obtain ⟨rfl, rfl⟩ := hl'
    refine ⟨(hch.objs (e, c) (by simp)).1, fun p' hp' => ?_⟩
    obtain ⟨p, hp, -⟩ := id hG
    have hpp : p' = p := by
      refine Option.some.inj (hp'.symm.trans ?_)
      rw [← hp]
      unfold ptrsOf gword
      rw [hgl gHeap (by decide) (by decide), hgl gFrame (by decide) (by decide),
        hgl gScratch (by decide) (by decide)]
    subst hpp
    exact hx.1 p' hp (e, c) (by simp)
  · exact jrNZ_setK (hJr _ (Or.inr rfl)) _ (jrNZ_setK (hJr _ (Or.inl rfl)) _ hJ)
  · intro fs0 hfs0
    obtain ⟨p, hp, -⟩ := id hG
    have hMV' : MarkV s.memory e := hMV _ _ _ _ (hx.1 p hp (e, c) (by simp))
    exact ⟨e, c, (hroot fs0 [(e, c)] hfs0 hch.chain).symm, hMV'⟩
  · exact bkeep_congr rfl rfl hb

/-- **The post-state of `run_frames` on the extended chain.** -/
theorem run_frames_postX {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (B : BundleX σ X C H tEV tCK M P R Bop Bexc Bepi Bfin) (hD : DrvCfg C H tEV tCK)
    (hgE : C.GT.lookup nmEv = some (.nptr tEV)) (hgC : C.GT.lookup nmCC = some (.nptr tCK))
    (hJr : ∀ g, g = nmEv ∨ g = nmCC → g ∉ jrGs)
    (hMV : ∀ Γ m p f, P Γ m p f → MarkV m f.1) :
    FunSpec σ X (nm "run_frames") (fun _ s r t => ∀ Γ, G C H Γ s → PreInvX C tEV tCK P R M [] s Γ →
      ∀ v, r = .returned v → RFXK C H tEV P Γ s t) := by
  intro vs body callee rs hl s hs hloc r hr Γ hG ⟨⟨hch, hΦ⟩, hJ⟩ v hv
  obtain ⟨p0, hp0, hord0, -⟩ := id hG
  exact run_frames_post_gen (rfHypsK B hD.fc.blkHeap Γ s) (rfExitK hD hgE hgC hJr hMV Γ s) vs body callee rs hl s hs hloc r hr
    ⟨⟨Γ, hG, hch, keepH_refl rfl, rootK_refl s⟩, hJ, bkeep_refl C Γ s, p0, hp0, hord0⟩ hΦ v hv

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_postX
