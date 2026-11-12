import InitECandidate.Solver.MemSafe.Ops6.Gkb
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Heap-window steps that track temporaries (sonnet-log)

* `TmpBuf Γ p b n`: `[b, b + n)` is allocated and outside every `Γ` object (a caller temporary);
  `tmpBuf_step` transports it along a typed-heap step.
* `hoareG_winAllocT`: `hoareG_winAlloc` with `TmpBuf` for the new block.
* `win_stepT` / `hoareG_winCallT`: `win_step` / `hoareG_winCall` also transporting `TmpBuf`.
* `winI_store` / `hoareG_winSt`: a raw word store into a `TmpBuf` cell keeps the window.
* `hoareG_winAllocF`, `hoareG_winCallK`, `hoareG_winStM`: the same with memory and freshness facts.
* `runT_adoptLog`, `gka_of_winR`: at the window's exit a 40-byte temporary above the mark becomes a
  frozen object of the typing (`tLOG`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def TmpBuf (Γ : Gam) (p : Ptrs) (b n : Nat) : Prop :=
  (heapBase ≤ b ∧ b + n ≤ p.hp) ∧
    ∀ a : BitVec 64, Overlap b n a → ¬ InObj Γ a.toNat ∧ p.Allocated a.toNat

theorem tmpBuf_bufOK {Γ : Gam} {p : Ptrs} {b n : Nat} (h : TmpBuf Γ p b n) :
    BufOK guestC Γ p b n := fun a ha => Or.inr (h.2 a ha)

theorem tmpBuf_in {Γ : Gam} {p : Ptrs} {b n b' n' : Nat} (hb : b ≤ b') (hn : b' + n' ≤ b + n)
    (h : TmpBuf Γ p b n) : TmpBuf Γ p b' n' := by
  refine ⟨⟨by have := h.1.1; omega, by have := h.1.2; omega⟩, fun a ha => ?_⟩
  obtain ⟨h1, h2, h3⟩ := ha
  exact h.2 a ⟨h1, by omega, by omega⟩

theorem tmpBuf_ptr {Γ : Gam} {p p' : Ptrs} {b n : Nat} (hm : p.Mono p') (h : TmpBuf Γ p b n) :
    TmpBuf Γ p' b n :=
  ⟨⟨h.1.1, le_trans h.1.2 hm.1⟩, fun a ha => ⟨(h.2 a ha).1, allocated_mono hm (h.2 a ha).2⟩⟩

theorem tmpBuf_step {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered)
    (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p') {b n : Nat} (h : TmpBuf Γ p b n) :
    TmpBuf Γ' p' b n := by
  refine ⟨⟨h.1.1, le_trans h.1.2 hm.1⟩, fun a ha => ?_⟩
  obtain ⟨hni, hal⟩ := h.2 a ha
  refine ⟨fun ⟨o', ho', h1, h2⟩ => ?_, allocated_mono hm hal⟩
  rcases hnf o' ho' a h1 h2 with ⟨o0, ho0, -, -, h3, h4⟩ | hf
  · exact hni ⟨o0, ho0, h3, h4⟩
  · exact fresh_not_alloc hord hord' hm hf hal

section win
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {d : Nat}
  {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u : State σ}

/-- **A raw word store into a temporary keeps the window.** -/
theorem winI_store (hH : HooksLawful guestC H) {t : State σ}
    (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) {A V : BitVec 64} (hA8 : A.toNat % 8 = 0)
    (hA : TmpBuf Γc pc A.toNat 8) (hm : t.memory = upd u.memory A V) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    WinI H Γ0 s0 p0 fs d um m Γc pc t := by
  obtain ⟨hu, Γ1, pm, hrun1, hch, hE, hmk, hrun, hPK, hfp, hnf⟩ := h
  have hGu := hrun.2.2.2.2.2.1
  have hpu := hrun.2.1
  have hnin : ¬ InObj Γc A.toNat := (hA.2 A ⟨hA8, by omega, by omega⟩).1
  obtain ⟨q, hq, hord, hL, -⟩ := id hGu
  obtain rfl : pc = q := Option.some.inj (hpu.symm.trans hq)
  have hmod : ModifiesOnly (fun x => x = A) u.memory t.memory := by
    rw [hm]
    exact modifiesOnly_upd (R := fun x => x = A) (modifiesOnly_refl _ _) rfl V
  have hGt : G guestC H Γc t := by
    refine G_write hH cfgOK_guest hGu (ptrsOf_congr hg) (fun g k _ => gword_congr hg g)
      (fun g _ => by rw [hg]) hd hbe hmod (fun x hx => Or.inl (hx ▸ hnin)) ?_
    intro o ho k hk hx
    exact absurd (cell_in hord hL ho hk) (by rw [hx]; exact hnin)
  have hpt : ptrsOf t = some pc := (ptrsOf_congr hg).trans hpu
  have hstep : RunT guestC H ([] : List MlS) Γc u Γc t pc pc :=
    ⟨hpu, hpt, mono_refl pc, ext_refl Γc, fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩,
      hGt, fun g _ _ => by rw [hg], bkeep_of_cells (Z := fun x => x = A) hmod
        (fun a ha hb => by
          obtain ⟨o, ho, -, k, hk, -, he⟩ := kCell_keep hb
          exact hnin (by rw [← ha, he]; exact cell_in hord hL ho hk))⟩
  refine ⟨hu, Γ1, pm, hrun1, hch, hE, hmk, runT_trans hrun hstep, fun a ha => ?_, hfp, hnf⟩
  have hne : a ≠ A := by
    rintro rfl
    exact hnin (by
      obtain ⟨o, ho, k, hk, -, rfl⟩ := protCell_ext hrun.2.2.2.1 ha
      exact cell_in hord hL ho hk)
  rw [hm, upd_ne _ _ hne]
  exact hPK a ha

/-- **A summarized callee inside the window**, also transporting `TmpBuf`. -/
theorem win_stepK (hH : HooksLawful guestC H) {sg : Sig} (hgw : sg.gw = [])
    (hgr : sg.grows = false)
    (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hargs : ArgsOK guestC Γc pc sg.params vs)
    (hR : SumRelX guestC H sg (fun _ s Γ => ReqOK ([] : List Cap) s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW ([] : List Cap) s Γ a)
      (fun _ _ _ _ _ _ => True) vs (callEntryStateHOLFinite u callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    ∃ Γ2 p2, WinI H Γ0 s0 p0 fs d um m Γ2 p2 st ∧
      (∀ b n, TmpBuf Γc pc b n → TmpBuf Γ2 p2 b n) ∧
      ∀ a : BitVec 64, ¬ InObj Γc a.toNat → pc.Allocated a.toNat → ¬ ArgCells sg.params vs a →
        st.memory a = u.memory a := by
  obtain ⟨hu, Γ1, pm, hrun1, hch, hE, hmk, hrun, hPK, hfp, hnf⟩ := h
  obtain ⟨Γ2, p2, hrun2, hc, -⟩ := run_callT hH (fun g hg' => by rw [hgw] at hg'; cases hg')
    hrun hR hg hna hargs (fun c hc => absurd hc (by simp))
    (fun a ⟨_, c, hc, _⟩ => absurd hc (by simp))
  have hGu := hrun.2.2.2.2.2.1
  have hGe : G guestC H Γc (callEntryStateHOLFinite u callee) := (G_locFree hH u _ _).mpr hGu
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some pc := (ptrsOf_congr rfl).trans hrun.2.1
  obtain ⟨q, hq, hord, hL, -⟩ := id hGe
  obtain rfl : q = pc := Option.some.inj (hq.symm.trans hpe)
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γc a :=
    fun a ha => argCells_not_prot hord hL hargs ha
  refine ⟨Γ2, p2, ⟨hu, Γ1, pm, hrun1, hch, hE, hmk, hrun2, fun a ha => ?_,
    (fpQ_of_fp hfk q p2 hpe hc.2.1).trans hfp, noGrow_trans hnf (hc.2.2.2.2.2.2.2.2.1 hgr)⟩, ?_, ?_⟩
  · have h1 : st.memory a = (callEntryStateHOLFinite u callee).memory a :=
      sumCore_protW (PW := fun _ => False) hc hGe hac
        (fun a' _ hw => by obtain ⟨c, hc', -⟩ := hw.2; exact absurd hc' (by simp)) a
        (protCell_ext hrun.2.2.2.1 ha) (fun h => h)
    rw [h1]; exact hPK a ha
  · intro b n hb
    obtain ⟨q2, hq2, hord2, -⟩ := hc.2.2.2.2.2.1
    obtain rfl : q2 = p2 := Option.some.inj (hq2.symm.trans hc.2.1)
    exact tmpBuf_step hord hord2 hc.2.2.1
      (newFresh_mono (mono_refl q) hc.2.2.1 (hc.2.2.2.2.2.2.2.2.1 hgr)) hb
  · intro a hni hal hna
    refine hc.2.2.2.2.2.2.1 a fun hw => ?_
    rcases hw with ⟨o, ho, j, hj, -, he⟩ | hw | hw | hw
    · subst he
      exact hni (cell_in hord hL ho hj)
    · exact hna hw
    · exact hw hal
    · obtain ⟨c', hc', -⟩ := hw.2
      exact absurd hc' (by simp)

theorem win_stepT (hH : HooksLawful guestC H) {sg : Sig} (hgw : sg.gw = [])
    (hgr : sg.grows = false)
    (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hargs : ArgsOK guestC Γc pc sg.params vs)
    (hR : SumRelX guestC H sg (fun _ s Γ => ReqOK ([] : List Cap) s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW ([] : List Cap) s Γ a)
      (fun _ _ _ _ _ _ => True) vs (callEntryStateHOLFinite u callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    ∃ Γ2 p2, WinI H Γ0 s0 p0 fs d um m Γ2 p2 st ∧
      ∀ b n, TmpBuf Γc pc b n → TmpBuf Γ2 p2 b n :=
  let ⟨Γ2, p2, h1, h2, _⟩ := win_stepK hH hgw hgr h hargs hR hfk hg hna
  ⟨Γ2, p2, h1, h2⟩

end win

section adopt
variable {H : Hooks σ}

/-- A fabricated signature for a window that adds objects. -/
def sgWg : Sig := { params := [], grows := true }

/-- `winCore` for a window that adds objects. -/
theorem winCoreG {Γ1 Γc : Gam} {um u : State σ} {pm pc : Ptrs}
    (hrun : RunT guestC H ([] : List MlS) Γ1 um Γc u pm pc) (hPK : ProtKeep guestC Γ1 um u) :
    SumCore guestC H sgWg (fun a => ¬ ProtCell guestC Γ1 a) Γ1 um [] (.returned (.val (.word 0)))
      u Γc pm pc := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h8, -⟩ := hrun
  refine ⟨h1, h2, h3, h4, h5, h6, fun a ha => hPK a ?_, fun g hg hgw => h8 g hg (by simp),
    fun h => by simp [sgWg] at h, fun v _ i rt w hrt => ?_⟩
  · by_contra hn; exact ha (Or.inr (Or.inr (Or.inr hn)))
  · simp [sgWg] at hrt

/-- **A 40-byte temporary above the mark becomes a frozen object of the run's typing**, a log
record in range. -/
theorem runT_adoptLog (hM : HooksMono guestC H)
    (hFw : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tLOG → H.wf Γ s o)
    {gw : List MlS} {Γ1 Γc : Gam} {um u : State σ} {pm pc : Ptrs}
    (hrun : RunT guestC H gw Γ1 um Γc u pm pc) {q : BitVec 64} (hq8 : q.toNat % 8 = 0)
    (hT : TmpBuf Γc pc q.toNat 40) (hm : pm.hp ≤ q.toNat) :
    RunT guestC H gw Γ1 um (Γc ++ [⟨q, tLOG, 40⟩]) u pm pc ∧
      LogRec (Γc ++ [⟨q, tLOG, 40⟩]) pc.hp q := by
  obtain ⟨⟨hh1, hh2⟩, hy⟩ := hT
  obtain ⟨h1, h2, h3, h4, h5, hG, h7, h8⟩ := hrun
  obtain ⟨qq, hqq, hord, hLay, -⟩ := id hG
  obtain rfl : pc = qq := Option.some.inj (h2.symm.trans hqq)
  have hhe : heapEnd < 2 ^ 64 := by decide
  have hpo : pc.hp ≤ heapEnd := hord.2.1
  have hdisj : ∀ a : BitVec 64, InO ⟨q, tLOG, 40⟩ a → ¬ InObj Γc a.toNat := by
    rintro a ⟨ha1, ha2⟩ ⟨o, ho, hlo, hhi⟩
    have ha1' : q.toNat ≤ a.toNat := ha1
    have ha2' : a.toNat < q.toNat + 40 := ha2
    obtain ⟨hl8, hs8, -, -, -⟩ := hLay.1 o ho
    have e : (BitVec.ofNat 64 (a.toNat / 8 * 8)).toNat = a.toNat / 8 * 8 := by
      rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
    have h3' := (hy (BitVec.ofNat 64 (a.toNat / 8 * 8)) (by
      refine ⟨?_, ?_, ?_⟩ <;> rw [e] <;> omega)).1
    rw [e] at h3'
    apply h3'
    refine ⟨o, ho, ?_, ?_⟩
    · unfold Obj.lo at hlo hl8 ⊢; omega
    · unfold Obj.hi Obj.lo at *; omega
  refine ⟨⟨h1, h2, h3, Struct.ext_trans h4 (ext_append Γc _), ?_,
    HtabEntries.G_addObjLL hM hG hq8 (by show (40 : Nat) % 8 = 0; decide) (by show 0 < 40; decide)
      (by rw [tlog_minSz]; show 0 ≤ 40; omega) (fun p hp => ?_) hdisj
      (fun k _ => by rw [tlog_prot]; trivial) tlog_untagged (fun _ _ => hFw _ _ _ rfl), h7, h8⟩,
    hh1, hh2, _, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl, le_rfl⟩
  · intro o ho a ha1 ha2
    rcases List.mem_append.mp ho with ho | ho
    · rcases h5 o ho a ha1 ha2 with h' | h'
      · exact Or.inl h'
      · exact Or.inr h'
    · simp only [List.mem_singleton] at ho
      subst ho
      have ha1' : q.toNat ≤ a.toNat := ha1
      have ha2' : a.toNat < q.toNat + 40 := ha2
      exact Or.inr (Or.inl ⟨by omega, by omega⟩)
  · obtain rfl : pc = p := Option.some.inj (h2.symm.trans hp)
    rw [tlog_region]; exact ⟨hh1, hh2⟩

/-- **`gka_of_win`, adopting a 40-byte temporary above the mark.** -/
theorem gka_of_winR (hF : FrameCfg guestC H tEV tCK) (hM : HooksMono guestC H)
    (hFw : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tLOG → H.wf Γ s o)
    {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {d : Nat}
    {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u : State σ} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) (h : WinI H Γ0 s0 p0 fs d um m Γc pc u)
    {q : BitVec 64} (hq8 : q.toNat % 8 = 0) (hT : TmpBuf Γc pc q.toNat 40) (hm : m.toNat ≤ q.toNat) :
    GKA H [Hooks.gJn] Γ0 s0 p0 fs d (Γc ++ [⟨q, tLOG, 40⟩]) pc u ∧
      LogRec (Γc ++ [⟨q, tLOG, 40⟩]) pc.hp q := by
  obtain ⟨⟨⟨hJ, -⟩, hΦ, hact⟩, Γ1, pm, hrun1, hch, hE, hmk, hrun0, hPK, hfp, -⟩ := h
  obtain ⟨hrun, hrec⟩ := runT_adoptLog hM hFw hrun0 hq8 hT (by rw [hmk]; exact hm)
  refine ⟨?_, hrec⟩
  have hG1 := hrun1.2.2.2.2.2.1
  have hSt : (fun _ : Nat => false) tEV = false ∧ (fun _ : Nat => false) tCK = false := ⟨rfl, rfl⟩
  have hPK' : ProtKeep guestC (nst (fun _ : Nat => false) Γ1) um u := protKeep_nst_of hPK
  obtain ⟨hch2, hΦeq⟩ := chain_of_keepT hF hSt (gw := ([] : List MlS))
    ⟨List.not_mem_nil, List.not_mem_nil⟩ hG1 hrun hfp hPK' hch
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hcore := winCoreG hrun hPK
  have hE2 : ChainE GP GR (Γc ++ [⟨q, tLOG, 40⟩]) u fs :=
    chainE_sumCoreW hF xCfg_guest (by decide) (sg := sgWg) (ks := [])
      (by simp) (by simp) hG1 hcore (fun a ha => absurd ha (argCells_any (ps := sgWg.params) (by simp [sgWg])))
      (fun a hp hw => absurd hp hw) (top := e) (by rw [← hob]; exact hevo.2.2)
      ⟨o, hevo.1, hob, hevo.2.1⟩ hch.objs hE
  have hJ2 : JrNZ u := jrNZ_runT (by decide) (gw := ([] : List MlS)) (by simp [JrOut]) hrun hJ
  refine ⟨⟨hJ2, runT_trans hrun1 (runT_gw (by simp) hrun), hch2, hE2⟩, by omega, ?_⟩
  obtain ⟨pq, -, -, hL, -⟩ := id hG1
  have hfk := framesKept_of_protKeepS hF hSt hL hch hPK'
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  obtain ⟨e1, c1, rest1, hfs1, he1, hc1, -⟩ := hch.chain
  rw [hfs1] at hfs2
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hactEq : act u = act um := by
    rw [act_eq he2 hc2, act_eq he1 hc1]
    have hf : (e1, c1) ∈ fs := by rw [hfs1]; simp
    rw [fk_ck hfk hf (k := 32) (by simp), fk_ev hfk hf (k := 104) (by simp)]
  rcases hact with h | h
  · exact Or.inl (by rw [hactEq]; exact h)
  · exact Or.inr (by omega)

/-- The mark is at or below the current heap pointer. -/
theorem winI_mark_le {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {d : Nat}
    {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u : State σ}
    (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) : m.toNat ≤ pc.hp := by
  obtain ⟨-, Γ1, pm, -, -, -, hmk, hrun, -⟩ := h
  rw [← hmk]; exact hrun.2.2.1.1

end adopt

/-- The hook of a frozen object is trivial. -/
theorem wfR_log (Γ : Gam) (s : State σ) (o : Obj) (ht : o.ty = tLOG) :
    (Hooks.guestHooksR (σ := σ)).wf Γ s o :=
  ⟨Hooks.recBase_triv Γ s o (by rw [ht]; decide), fun e he hty => by
    have hm := Hooks.recTab_ty he
    rw [hty, ht] at hm
    exact absurd hm (by decide)⟩

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "WJ" => WinI (Hooks.guestHooksR (σ := σ)) Γ0 s0 p0 fs

/-- **`var q = alloc(x); k`**: the block is a `TmpBuf` for the new typing, of cells unallocated before. -/
theorem hoareG_winAllocF (hfs : fs = (e, c) :: rest) {d : Nat} {um : State σ} {m : BitVec 64}
    {Γc : Gam} {pc : Ptrs} {u0 : State σ} (hw : WJ d um m Γc pc u0) {x : ExpHOL 64}
    {N : BitVec 64} (hx : ev u0 x = some (.val (.word N))) {rn : MlS} {k : ProgHOL 64}
    {b' : Bool}
    (hk : ∀ (st : State σ) (q : BitVec 64) (pc' : Ptrs),
      st.memory = u0.memory → pc.Mono pc' →
      WJ d um m Γc pc' (setVarHOLFinite rn (.val (.word q)) { st with locals := u0.locals }) →
      q.toNat % 8 = 0 → q.toNat + N.toNat ≤ heapEnd → TmpBuf Γc pc' q.toNat N.toNat →
      (∀ a : Nat, q.toNat ≤ a → a < q.toNat + N.toNat → ¬ pc.Allocated a) →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (.val (.word q))
        { st with locals := u0.locals }) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "alloc") [x] k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hf := funSpec_and (allocSpec_alloc (σ := σ) guestCtx_code) (funSpec_be' (nm "alloc"))
  obtain ⟨hGu, hpu⟩ := winI_G hw
  obtain ⟨qq, hqq, hordc, hLc, -⟩ := id hGu
  obtain rfl : pc = qq := Option.some.inj (hpu.symm.trans hqq)
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    subst hP
    have hvs' : vs = [.val (.word N)] := by
      rw [evs_cons hx evs_nil] at hvs; simp only [Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hgl, p', hp', hord', hmono, hret⟩ :=
      hR (by simp [Good]) N pc hvs' ((ptrsOf_congr rfl).trans hpu) hordc
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    obtain ⟨q, hv, hq8, hlive, hnotal⟩ := hret v rfl
    subst hv
    obtain ⟨hW, -⟩ := winI_alloc hF.hooks hw
      (t := setVarHOLFinite rn (.val (.word q)) { st with locals := s.locals }) hm hgl hd hbe hp'
      hord' hmono
    have hbuf : TmpBuf Γc p' q.toNat N.toNat := by
      refine ⟨⟨hlive.1, hlive.2⟩, ?_⟩
      rintro a ⟨ha8, hl, hh⟩
      refine ⟨fun hin => ?_, Helpers.allocated_of_live hlive (by omega) (by omega)⟩
      exact hnotal a.toNat (by omega) (by omega) (Helpers.allocated_of_inObj hLc hin)
    have hbnd : q.toNat + N.toNat ≤ heapEnd := by
      have h1 := hlive.2
      have h2 := hord'.2.1
      omega
    exact hoareG_conseq (hk st q p' hm hmono hW hq8 hbnd hbuf hnotal) (fun _ _ h => h)
      fun r t _ _ hq => gq_loc kOK_KJ hq _
  · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    subst hP
    have hvs' : vs = [.val (.word N)] := by
      rw [evs_cons hx evs_nil] at hvs; simp only [Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hgl, p', hp', hord', hmono, -⟩ :=
      hR (good_of_abn habn) N pc hvs' ((ptrsOf_congr rfl).trans hpu) hordc
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    obtain ⟨hW, -⟩ := winI_alloc hF.hooks hw hm hgl hd hbe hp' hord' hmono
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    rw [rbd_abn habn]
    exact kok_loc kOK_KJ (kOK_KJ.mono _ _ _ (gk_of_win hF hfs hW) (Nat.zero_le _)) _

/-- **`var q = alloc(x); k`**: the block is a `TmpBuf` for the new typing. -/
theorem hoareG_winAllocT (hfs : fs = (e, c) :: rest) {d : Nat} {um : State σ} {m : BitVec 64}
    {Γc : Gam} {pc : Ptrs} {u0 : State σ} (hw : WJ d um m Γc pc u0) {x : ExpHOL 64}
    {N : BitVec 64} (hx : ev u0 x = some (.val (.word N))) {rn : MlS} {k : ProgHOL 64}
    {b' : Bool}
    (hk : ∀ (st : State σ) (q : BitVec 64) (pc' : Ptrs),
      st.memory = u0.memory → pc.Mono pc' →
      WJ d um m Γc pc' (setVarHOLFinite rn (.val (.word q)) { st with locals := u0.locals }) →
      q.toNat % 8 = 0 → q.toNat + N.toNat ≤ heapEnd → TmpBuf Γc pc' q.toNat N.toNat →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (.val (.word q))
        { st with locals := u0.locals }) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "alloc") [x] k) (GQ (KJ) b') :=
  hoareG_winAllocF hfs hw hx fun st q pc' h1 h2 h3 h4 h5 h6 _ => hk st q pc' h1 h2 h3 h4 h5 h6

/-- **`f(args); k`** for a plain `tab26` callee inside a window, transporting `TmpBuf`, and keeping
allocated cells outside `Γ` that the arguments miss. -/
theorem hoareG_winCallK (hfs : fs = (e, c) :: rest) {f : MlS} {sg : Sig} (hgw : sg.gw = [])
    (hgr : sg.grows = false) (hmem : (f, sg, ([] : List Cap)) ∈ ShardsJL.tab26)
    (hfp : KeepsFp σ guestCtx f) {args : List (ExpHOL 64)} {k : ProgHOL 64} {b' : Bool}
    {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u0 : State σ}
    (hw : WJ d um m Γc pc u0)
    (hargs : ∀ vs, evs u0 args = some vs → ArgsOK guestC Γc pc sg.params vs)
    (hk : ∀ t : State σ, t.locals = u0.locals →
      (∃ Γ2 p2, WJ d um m Γ2 p2 t ∧ ∀ b n, TmpBuf Γc pc b n → TmpBuf Γ2 p2 b n) →
      (∀ a : BitVec 64, ¬ InObj Γc a.toNat → pc.Allocated a.toNat →
        (∀ vs, evs u0 args = some vs → ¬ ArgCells sg.params vs a) → t.memory a = u0.memory a) →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hspec := tabJL_guestR (σ := σ) f sg [] hmem
  refine hoareG_seq (R := fun ro t => (ro = none → t.locals = u0.locals ∧
        (∃ Γ2 p2, WJ d um m Γ2 p2 t ∧ ∀ b n, TmpBuf Γc pc b n → TmpBuf Γ2 p2 b n) ∧
        ∀ a : BitVec 64, ¬ InObj Γc a.toNat → pc.Allocated a.toNat →
          (∀ vs, evs u0 args = some vs → ¬ ArgCells sg.params vs a) → t.memory a = u0.memory a) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD (FunSpec.and (sumSpecA_relX hspec) hfp) ?_ ?_)
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pt fun t ht => hk t (ht.1 rfl).1 (ht.1 rfl).2.1 (ht.1 rfl).2.2)
  · intro u _ hu vs hvs callee v st ⟨hR, hfk⟩ _
    subst hu
    obtain ⟨Γ2, p2, hw2, htr, hkp⟩ := win_stepK hF.hooks hgw hgr hw (hargs vs hvs) hR
      (hfk (by simp [Good]) (not_abortive_ret v)) (by simp [Good]) (not_abortive_ret v)
    exact ⟨fun _ => ⟨rfl, ⟨Γ2, p2, winI_congr hF.hooks hw2 rfl rfl rfl rfl, htr⟩,
      fun a h1 h2 h3 => hkp a h1 h2 (h3 vs hvs)⟩, fun r hr => by cases hr⟩
  · intro u _ hu vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hu
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    obtain ⟨Γ2, p2, hw2, -, -⟩ := win_stepK hF.hooks hgw hgr hw (hargs vs hvs) hR
      (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ (gk_of_win hF hfs hw2) rfl rfl rfl rfl)
      (Nat.zero_le _)

/-- **`f(args); k`** for a plain `tab26` callee inside a window, transporting `TmpBuf`. -/
theorem hoareG_winCallT (hfs : fs = (e, c) :: rest) {f : MlS} {sg : Sig} (hgw : sg.gw = [])
    (hgr : sg.grows = false) (hmem : (f, sg, ([] : List Cap)) ∈ ShardsJL.tab26)
    (hfp : KeepsFp σ guestCtx f) {args : List (ExpHOL 64)} {k : ProgHOL 64} {b' : Bool}
    {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u0 : State σ}
    (hw : WJ d um m Γc pc u0)
    (hargs : ∀ vs, evs u0 args = some vs → ArgsOK guestC Γc pc sg.params vs)
    (hk : ∀ t : State σ, t.locals = u0.locals →
      (∃ Γ2 p2, WJ d um m Γ2 p2 t ∧ ∀ b n, TmpBuf Γc pc b n → TmpBuf Γ2 p2 b n) →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k) (GQ (KJ) b') :=
  hoareG_winCallK hfs hgw hgr hmem hfp hw hargs fun t h1 h2 _ => hk t h1 h2

/-- **`st ea, ee; k`** into a temporary of the window, with what happens to the memory. -/
theorem hoareG_winStM {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs}
    {u0 : State σ} (hw : WJ d um m Γc pc u0) {ea ee : ExpHOL 64} {A V : BitVec 64}
    (ha : ev u0 ea = some (.val (.word A))) (hv : ev u0 ee = some (.val (.word V)))
    (hA8 : A.toNat % 8 = 0) (hA : TmpBuf Γc pc A.toNat 8) {k : ProgHOL 64} {b' : Bool}
    (hk : ∀ t : State σ, t.locals = u0.locals → WJ d um m Γc pc t →
      rd t.memory A = V → (∀ x, x ≠ A → t.memory x = u0.memory x) →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (.store ea ee) k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine hoareG_seq (R := fun ro t => ro = none ∧ t.locals = u0.locals ∧ WJ d um m Γc pc t ∧
      rd t.memory A = V ∧ ∀ x, x ≠ A → t.memory x = u0.memory x)
    (hoareG_store ?_) (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pt fun t ht => ?_)
  · intro s _ hs w v mem hw' hv' hmem
    subst hs
    rw [ha] at hw'
    rw [hv] at hv'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
    subst hw'
    simp only [Option.some.injEq] at hv'
    subst hv'
    simp only [flattenHOL] at hmem
    obtain ⟨hd, rfl⟩ := stores_one hmem
    exact ⟨rfl, rfl, winI_store hF.hooks hw hA8 hA rfl rfl rfl rfl, rd_upd_self _ _ _,
      fun x hx => upd_ne _ _ hx⟩
  · exact hk t ht.2.1 ht.2.2.1 ht.2.2.2.1 ht.2.2.2.2

/-- **`st ea, ee; k`** into a temporary of the window. -/
theorem hoareG_winSt {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs}
    {u0 : State σ} (hw : WJ d um m Γc pc u0) {ea ee : ExpHOL 64} {A V : BitVec 64}
    (ha : ev u0 ea = some (.val (.word A))) (hv : ev u0 ee = some (.val (.word V)))
    (hA8 : A.toNat % 8 = 0) (hA : TmpBuf Γc pc A.toNat 8) {k : ProgHOL 64} {b' : Bool}
    (hk : ∀ t : State σ, t.locals = u0.locals → WJ d um m Γc pc t →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (.store ea ee) k) (GQ (KJ) b') :=
  hoareG_winStM hw ha hv hA8 hA fun t h1 h2 _ _ => hk t h1 h2

end steps

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.runT_adoptLog
#print axioms InitECandidate.Solver.MemSafe.Frames.gka_of_winR
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winAllocF
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winCallK
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winStM
#print axioms InitECandidate.Solver.MemSafe.Frames.winI_store
#print axioms InitECandidate.Solver.MemSafe.Frames.win_stepT
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winAllocT
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winCallT
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winSt
