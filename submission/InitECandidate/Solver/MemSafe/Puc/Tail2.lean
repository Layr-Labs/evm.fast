import InitECandidate.Solver.MemSafe.Puc.Tail

/-!
# Puc U6b: the heap part before the releases, the releases

`PuMid`: the state before `scratch_release` / `frame_mem_release` (copy of F3's `TailMid`), `pu_mid` (copy of `tailMid_of_tl`),
`hoare_rel'` (F3's `hoare_rel` plus "the locals are those of the entry state"), `pu_end`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

structure PuMid (A : TlA σ) (out : BitVec 64) (u : State σ) (Γ' : Gam) : Prop where
  hG : G guestC (HR σ) Γ' u
  heap : ∀ o ∈ Γ', (guestC.ty o.ty).region = .heap
  owner : OwnerHeap Γ'
  keep : KeepH guestC A.Γ0 Γ' A.s0 u
  blk : ∀ a, Zt A out a → rd u.memory a = rd A.s0.memory a
  hev : ∃ e, gword u nmEv = some e ∧ e.toNat < nullMax
  hcc : ∃ c, gword u nmCC = some c ∧ c.toNat < nullMax
  ptrs : ∃ p, ptrsOf u = some p
  jr : JrNZ u
  outO : ∃ o ∈ Γ', o.base = out ∧ o.ty = tMCO
  b48 : (rd u.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32
  tsP : ∃ w, gword u nmTs = some w ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tTS

theorem pu_mid {A : TlA σ} {out : BitVec 64} {u : State σ} {Γ : Gam} {p : Ptrs} (P : TPre A out)
    (h : TlS A (refA A) (Zt A out) ([] : List Obj) u Γ p) : PuMid A out u (keepG Γ) := by
  have hGk := G_keepOwnerHeap h.hG h.hev h.hcc
  have hL := tl_layout h
  have hord := tl_ord h
  have hLk : Layout guestC p (keepG Γ) :=
    layout_shrink hL (fun o ho => (mem_keepG.mp ho).1) (((layout_nodup hL).filter _).filter _)
  have hext : Ext A.Γ0 (keepG Γ) := by
    intro o ho
    obtain ⟨o', ho', hb, ht, hs⟩ := h.ext o ho
    refine ⟨o', mem_keepG.mpr ⟨ho', by rw [ht]; exact P.heap0 o ho, ?_⟩, hb, ht, hs⟩
    rw [ht]
    intro hso
    have := P.own0 o ho hso.1
    unfold ScratchOwn at hso
    omega
  have hnf : NewFresh A.Γ0 (keepG Γ) A.q0 p := fun o ho a l1 l2 => h.nf o (mem_keepG.mp ho).1 a l1 l2
  have hblk : ∀ a, Zt A out a → rd u.memory a = rd A.s0.memory a := fun a ha => h.keep a ha
  refine ⟨hGk.1, fun o ho => (mem_keepG.mp ho).2.1, hGk.2, keepH_of_run A.hq0 h.hp h.mono hext hnf hLk hord, hblk,
    h.hev, h.hcc, ⟨p, h.hp⟩, h.jr, ?_, ?_, ?_⟩
  · obtain ⟨o, ho, hb, ht, hs⟩ := P.outO
    obtain ⟨o', ho', hb', ht', -⟩ := hext o ho
    exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩
  · rw [hblk _ (zt_out P (off := 48) (by norm_num) (by norm_num) (by norm_num))]
    exact P.b48
  · obtain ⟨w, hw, o, ho, hb, ht⟩ := P.ts
    obtain ⟨o', ho', hb', ht', -⟩ := hext o ho
    refine ⟨w, ?_, o', ho', hb'.trans hb, ht'.trans ht⟩
    unfold gword at hw ⊢
    rw [h.glob nmTs (by decide)]; exact hw

/-- What the two release calls leave behind (F3's `RelPost` and the locals). -/
def RelPost' (Γ : Gam) (u0 t : State σ) (mk mm : BitVec 64) : Prop :=
  RelPost Γ u0 t mk mm ∧ t.locals = u0.locals

theorem hoare_rel' {Γ : Gam} {u0 : State σ} {outw mk mm : BitVec 64}
    (hG : G guestC (HR σ) Γ u0) (hHeap : ∀ o ∈ Γ, (guestC.ty o.ty).region = .heap)
    (hout : u0.locals.lookup (nm "out") = some (.val (.word outw)))
    (hmkl : u0.locals.lookup (nm "system_mark") = some (.val (.word mk)))
    (hmk : rd u0.memory (outw + BitVec.ofNat 64 80) = mk) (hmm : rd u0.memory (outw + BitVec.ofNat 64 88) = mm)
    (hM : MarkVals mk mm) :
    Hoare σ guestCtx (fun t => t = u0) pucC (fun r t => r = none ∧ RelPost' Γ u0 t mk mm) := by
  unfold pucC
  let P1 : State σ → Prop := fun t => t.memory = u0.memory ∧ t.memaddrs = u0.memaddrs ∧ t.be = u0.be ∧
    t.globals.lookup gScratch = some (.val (.word mk)) ∧
    (∀ g, g ≠ gScratch → t.globals.lookup g = u0.globals.lookup g) ∧ t.locals = u0.locals
  refine hoare_seqP (Rn := P1) ?_ ?_
  · refine hoare_callD ((releaseSpec_scratch_release guestCtx_code).and (Frames.funSpec_dom _)) ?_
    intro s hs hP vs hvs callee v st ⟨hR, hdb⟩ hst
    subst hP
    have hv : vs = [.val (.word mk)] := by
      have : evs s [lv (nm "system_mark")] = some [.val (.word mk)] := evs_cons (ev_lv_eq hmkl) evs_nil
      rw [this] at hvs; exact (Option.some.inj hvs).symm
    obtain ⟨hm, hg1, hg2⟩ := hR (by simp [Good]) mk hv
    exact ⟨rfl, hm, hdb.1, hdb.2, hg1, hg2, rfl⟩
  · refine hoare_callD ((releaseSpec_frame_mem_release guestCtx_code).and (Frames.funSpec_dom _)) ?_
    intro s hs hP vs hvs callee v st ⟨hR, hdb⟩ hst
    obtain ⟨hmem, hd, hbe, hgs, hgo, hloc⟩ := hP
    obtain ⟨x, rfl, hx⟩ := evs_single hvs
    have hout' : s.locals.lookup (nm "out") = some (.val (.word outw)) := by rw [hloc]; exact hout
    have hx' := (evI_ld (evI_add (evI_lv hout') (evI_cw s 88))) x hx
    have hxmm : x = .val (.word mm) := by
      rw [hx']
      show ValueHOL.val (HolWordLab.word (rd s.memory (outw + BitVec.ofNat 64 88))) = _
      rw [hmem, hmm]
    subst hxmm
    obtain ⟨hm2, hg1, hg2⟩ := hR (by simp [Good]) mm rfl
    have hmem2 : st.memory = u0.memory := hm2.trans hmem
    have hgs2 : ∀ g, g ≠ gFrame → st.globals.lookup g = (callEntryStateHOLFinite s callee).globals.lookup g := hg2
    have hgScr : st.globals.lookup gScratch = some (.val (.word mk)) := by
      rw [hg2 gScratch (by decide)]; exact hgs
    have hgo' : ∀ g, g ≠ gScratch → g ≠ gFrame → st.globals.lookup g = u0.globals.lookup g := by
      intro g h1 h2
      rw [hg2 g h2]
      exact hgo g h1
    have hG' : G guestC (HR σ) Γ { st with locals := s.locals } :=
      G_relHeap (σ := σ) Hooks.guestHooksR_lawful (Hooks.drvCfg_guestHooksR (σ := σ)).allocG hG hHeap hM
        (hmem2) (by exact hdb.1.trans (hd)) (by exact hdb.2.trans hbe) hgScr hg1 hgo'
    refine ⟨rfl, ⟨hG', hmem2, ?_, hgo'⟩, hloc⟩
    obtain ⟨p0, hp0, -⟩ := id hG
    obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := ptrsOf_parts hp0
    refine ⟨_, ⟨a.toNat, mm.toNat, mk.toNat⟩, hp0, ?_, rfl⟩
    refine ptrsOf_of (a := a) (b := mm) (c := mk) ?_ ?_ ?_
    · unfold gword at ha ⊢
      show (match st.globals.lookup gHeap with | some (ValueHOL.val (HolWordLab.word w)) => some w | _ => none) = some a
      rw [hgo' gHeap (by decide) (by decide)]
      exact ha
    · unfold gword; show (match st.globals.lookup gFrame with | some (ValueHOL.val (HolWordLab.word w)) => some w | _ => none) = some mm
      rw [hg1]
    · unfold gword; show (match st.globals.lookup gScratch with | some (ValueHOL.val (HolWordLab.word w)) => some w | _ => none) = some mk
      rw [hgScr]

theorem tEnd_of_rel {A : TlA σ} {out : BitVec 64} {u t : State σ} {Γ' : Gam} {mk mm : BitVec 64}
    (hmid : PuMid A out u Γ') (hrel : RelPost Γ' u t mk mm) : TEnd A out t := by
  obtain ⟨hG, hmem, ⟨p0, p1, hp0, hp1, hhp⟩, hgl⟩ := hrel
  refine ⟨Γ', hG, hmid.owner, keepH_hp hmid.keep hp0 hp1 hhp, fun a ha => ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hmem]; exact hmid.blk a ha
  · obtain ⟨e, he, hs⟩ := hmid.hev
    refine ⟨e, ?_, hs⟩
    unfold gword at he ⊢
    rw [hgl nmEv (by decide) (by decide)]; exact he
  · obtain ⟨e, he, hs⟩ := hmid.hcc
    refine ⟨e, ?_, hs⟩
    unfold gword at he ⊢
    rw [hgl nmCC (by decide) (by decide)]; exact he
  · refine jrNZ_of_gword (fun g hg => ?_) hmid.jr
    have hg' : g ≠ gScratch ∧ g ≠ gFrame := by
      rcases Frames.jrGs_cases hg with rfl | rfl <;> exact ⟨by decide, by decide⟩
    unfold gword
    rw [hgl g hg'.1 hg'.2]
  · exact hmid.outO
  · rw [hmem]; exact hmid.b48
  · obtain ⟨w, hw, o, ho, hb, ht⟩ := hmid.tsP
    refine ⟨w, ?_, o, ho, hb, ht⟩
    unfold gword at hw ⊢
    rw [hgl nmTs (by decide) (by decide)]; exact hw

theorem tEnd_of_mid {A : TlA σ} {out : BitVec 64} {u : State σ} {Γ' : Gam} (hmid : PuMid A out u Γ') :
    TEnd A out u :=
  ⟨Γ', hmid.hG, hmid.owner, hmid.keep, hmid.blk, hmid.hev, hmid.hcc, hmid.jr, hmid.outO, hmid.b48, hmid.tsP⟩

end InitECandidate.Solver.MemSafe.Puc
