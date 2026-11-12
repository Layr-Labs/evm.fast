import InitECandidate.Solver.MemSafe.Ptx.PtGhost
import InitECandidate.Solver.MemSafe.Ptx.PtJn
import InitECandidate.Solver.MemSafe.Ptx.PtAdopt
import InitECandidate.Solver.MemSafe.Ptx.PtTab2
import InitECandidate.Solver.MemSafe.Ptx.PtNew
import InitECandidate.Solver.MemSafe.Bal.Entries

/-!
# F3d: `state_fresh_tx` (allocates `ts` and its eight tables), proved in the ghost world of `PtGhost`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.AllocImpl (lookup_of_gword)

variable {σ : Type}

def noD : BitVec 64 → Option (BitVec 64) := fun _ => none

theorem ts_ptW : ptW.contains nmTs = true := by decide

theorem ptRun_gz {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {u : State σ} {p : Ptrs} (h : PtRun D Γ0 s0 p0 Γ u p) : PtRun D Γ0 s0 p0 Γ (gz u) p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  have hne : ∀ g, g ∈ guestC.PG → g ≠ nmTs := fun g hg e => ts_notPG (e ▸ hg)
  refine ⟨h1, (ptrsOf_gz u).trans h2, h3, h4, h5, G_gz h6,
    fun g hg hn => (gz_lookup u g (hne g hg)).trans (h7 g hg hn), h8, ?_, ?_, ?_, h12, ?_⟩
  · refine jrNZ_of_lookup (fun g hg => gz_lookup u g ?_) h9
    intro e; subst e; revert hg; decide
  · obtain ⟨e, he, hs⟩ := h10
    exact ⟨e, by unfold gword; rw [gz_lookup u _ (by decide)]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11
    exact ⟨e, by unfold gword; rw [gz_lookup u _ (by decide)]; exact he, hs⟩
  · intro g hg
    have : g ≠ nmTs := fun e => by rw [e] at hg; rw [ts_ptW] at hg; cases hg
    exact (gz_lookup u g this).trans (h13 g hg)


def tsSlotTy (i : Nat) : Nat :=
  if i = 1 ∨ i = 2 ∨ i = 7 then tHTh20 else if i = 4 then tHTt20 else if i = 6 then tHTc32 else tHTh52

/-- `state_fresh_tx`'s invariant: the run (ghost world), the global `ts` points at the fresh block `w`, its first `n`
table slots hold table objects. -/
structure SFI (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (w : BitVec 64) (n : Nat) (Γ : Gam) (p : Ptrs) (u : State σ) : Prop where
  run : PtRun noD Γ0 s0 p0 Γ (gz u) p
  hts : gword u nmTs = some w
  hfb : FreshBuf Γ p0 p w 72
  hlive : heapBase ≤ w.toNat ∧ w.toNat + 72 ≤ p.hp
  slots : ∀ i, 1 ≤ i → i ≤ n → ∃ o ∈ Γ, o.base = rd u.memory (w + BitVec.ofNat 64 (8 * i)) ∧ o.ty = tsSlotTy i
  pk : ∀ a, ProtCell guestC Γ0 a → u.memory a = s0.memory a
  ok : ∀ a : BitVec 64, ¬ InObj Γ0 a.toNat → p0.Allocated a.toNat → u.memory a = s0.memory a

/-- The spec of a `htab_new` instance at every state: the run from the ghost state, related to the real one. -/
def SfNewR (KL CP th : Nat) (vs : List (ValueHOL 64)) (e : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  (∃ t0, (SumRelX guestC (HR σ) ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ a => ProtCell guestC Γ a ∧ CapPW [] s Γ a)
      (fun _ _ _ _ _ _ => True) vs (gz e) r t0 ∧
    (∀ g, cW.contains g = false → t0.globals.lookup g = (gz e).globals.lookup g)) ∧ Trie.GrRel [nmTs] t0 t) ∧
  (∀ g, cW.contains g = false → t.globals.lookup g = e.globals.lookup g)

theorem htab_in_tsFns : (tsFns.map Prod.fst).contains (nm "htab_new") = true := by decide_cbv
theorem htab_in_all : ptAllNames.contains (nm "htab_new") = true := by decide_cbv

theorem sf_new {KL CP th : Nat}
    (hcs : CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩ []) :
    FunSpec σ guestCtx (nm "htab_new") (SfNewR KL CP th) := by
  have h0 := FunSpec.and (sumSpecA_relX hcs) (funSpec_pt_gw_all (σ := σ) guestCtx_code htab_in_all)
  have h1 := ghost_fs htab_in_tsFns h0
  have h2 := FunSpec.and h1 (funSpec_pt_gw_all (σ := σ) guestCtx_code htab_in_all)
  exact FunSpec.mono h2 fun vs e r t ⟨⟨t0, h, hr⟩, hg⟩ => ⟨⟨t0, h, hr⟩, hg⟩

theorem argsOK_eq2 {Γ : Gam} {p : Ptrs} {a b : Nat} :
    ArgsOK guestC Γ p [.eq a, .eq b] [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 b))] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv; rfl
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv; rfl
  · simp at hpt

theorem not_argCells_eq2 {a b : Nat} {x : BitVec 64} (vs : List (ValueHOL 64)) :
    ¬ ArgCells [.eq a, .eq b] vs x := by
  rintro ⟨i, w, hw, hc⟩
  rcases hc with ⟨n, hn, -⟩ | ⟨j, c, d, y, hn, -, -⟩
  · rcases i with _ | _ | i <;> simp at hn
  · rcases i with _ | _ | i <;> simp at hn

theorem toNat_add_ofNat {w : BitVec 64} {k : Nat} (h : w.toNat + k < 2 ^ 64) :
    (w + BitVec.ofNat 64 k).toNat = w.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega), Nat.mod_eq_of_lt h]

/-- The cells `w + 8 i`, `i < 9`, of a block of 72 bytes. -/
theorem overlap_slot {w : BitVec 64} {i : Nat} (hi : i < 9) (hw : w.toNat % 8 = 0) (hb : w.toNat + 72 < 2 ^ 64) :
    Overlap w.toNat 72 (w + BitVec.ofNat 64 (8 * i)) := by
  have := toNat_add_ofNat (w := w) (k := 8 * i) (by omega)
  unfold Overlap
  rw [this]
  omega


/-- **One `htab_new` call in the ghost world.** -/
theorem sf_call_step {KL CP th : Nat} {n : Nat} (hn8 : n < 9)
    {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} {Γ : Gam} {p : Ptrs} {u st : State σ}
    {callee : Locs} {v : ValueHOL 64}
    (hS : SFI Γ0 s0 p0 w n Γ p u)
    (hR : SfNewR KL CP th [.val (.word (BitVec.ofNat 64 KL)), .val (.word (BitVec.ofNat 64 CP))]
      (callEntryStateHOLFinite u callee) (.returned v) st)
    (hsh : shapeEqHOL (shapeOfHOLExact v) ShapeHOL.one = true) :
    ∃ Γ' p' o, v = .val (.word o) ∧ SFI Γ0 s0 p0 w n Γ' p' { st with locals := u.locals } ∧
      ∃ ob ∈ Γ', ob.base = o ∧ ob.ty = th := by
  obtain ⟨o, rfl⟩ := val_of_shapeEq_one' hsh
  obtain ⟨⟨t0, ⟨hR0, hgl0⟩, hrel⟩, hglr⟩ := hR
  have hre : PtRun noD Γ0 s0 p0 Γ (gz (callEntryStateHOLFinite u callee)) p := ptRun_loc hS.run callee (u.clock - 1)
  have hGe := ptRun_G hre
  have hpe := ptRun_ptrs hre
  obtain ⟨Γ', p0', p', hc, -⟩ := hR0 (by simp [Good]) (not_abortive_ret _) Γ hGe ⟨p, hpe, argsOK_eq2⟩ reqOK_nil
  obtain rfl : p = p0' := (Option.some.inj (hc.1.symm.trans hpe)).symm
  have hc' := sumCore_pwM (PW' := fun a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) hc
    (fun a h => ⟨h.1, absurd h.2 (by simp [CapPW])⟩)
  have hrun0 := ptRun_core hre (sg := ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩) argsOK_eq2 hc'
    (by simp) (fun g _ h => by simp at h) (by simp) (fun g hg => hgl0 g (cW_of_ptW hg))
  obtain ⟨gl, hst, hgl⟩ := hrel
  subst hst
  set u' : State σ := { (({ t0 with globals := gl }) : State σ) with locals := u.locals } with hu'
  have hglob : (gz u').globals = t0.globals := by
    apply hfm_ext
    intro k
    show (gl.update (nmTs, .val (.word 0))).lookup k = t0.globals.lookup k
    by_cases hk : nmTs = k
    · subst hk
      have := hgl0 nmTs (by decide)
      rw [gz_lookup_ts] at this
      simp [HolFiniteMapExact.update, FUPDATE, this]
    · simp [HolFiniteMapExact.update, FUPDATE, hk]
      exact hgl k (by simpa [eq_comm] using hk)
  have hrunT : PtRun noD Γ0 s0 p0 Γ' (gz u') p' := ptRun_same hrun0 rfl hglob rfl rfl
  have hord0 := ptRun_ord0 hS.run
  have hord := ptRun_ord hS.run
  have hnf := hS.run.2.2.2.2.1
  have hmono := hS.run.2.2.1
  -- memory outside `Γ` does not change
  have hfrz : ∀ a : BitVec 64, ¬ InObj Γ a.toNat → p.Allocated a.toNat → t0.memory a = u.memory a := fun a hn hal =>
    mem_outside_keep hGe hc (fun a h => h.1) hn hal (not_argCells_eq2 _)
  have hstep : StepD Γ p (gz u) Γ' p' (gz u') :=
    ⟨ptRun_ptrs hS.run, ptRun_ptrs hrunT, hc.2.2.1, hc.2.2.2.1, hc.2.2.2.2.1, ptRun_G hS.run, ptRun_G hrunT⟩
  have hfb2 : FreshBuf Γ' p0 p' w 72 := by
    have := holds_step (p0 := p0) (S := fun f => f = Fct.fbuf w 72) hstep hord0
      (fun f hf a ha => by subst hf; exact absurd ha (by simp [Fct.reads])) (fun _ _ hh => by cases hh)
      (by intro f hf; subst hf; exact hS.hfb)
    exact this _ rfl
  have hobj : ∃ ob ∈ Γ', ob.base = o ∧ ob.ty = th := by
    have hret := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.fits (.ptr th)) o rfl (by simp [flattenHOL])
    exact hret
  refine ⟨Γ', p', o, rfl, ⟨hrunT, ?_, hfb2, ⟨hS.hlive.1, le_trans hS.hlive.2 hc.2.2.1.1⟩, ?_, ?_, ?_⟩, hobj⟩
  · have := hglr nmTs (by decide)
    have h2 := hS.hts
    unfold gword at h2 ⊢
    show (match gl.lookup nmTs with | some (ValueHOL.val (HolWordLab.word w)) => some w | x => none) = _
    rw [show gl.lookup nmTs = u.globals.lookup nmTs from this]
    exact h2
  · intro i hi1 hi2
    obtain ⟨ob, hob, hb, ht⟩ := hS.slots i hi1 hi2
    obtain ⟨ob', hob', hb', ht', -⟩ := hc.2.2.2.1 ob hob
    have hov := overlap_slot (w := w) (i := i) (by omega) hS.hfb.1 (by have := hS.hlive.2; have := hord.2.1; unfold heapEnd at *; omega)
    have hn := (hS.hfb.2 _ hov).2
    have hal := alloc_of_fresh hord0 hord (hS.hfb.2 _ hov).1
    refine ⟨ob', hob', ?_, ht'.trans ht⟩
    show _ = rd t0.memory _
    unfold rd
    rw [hfrz _ hn hal]
    rw [hb', hb]
    rfl
  · intro a ha
    have h1 := hS.pk a ha
    have hpc := protCell_ext (C := guestC) hS.run.2.2.2.1 ha
    have h2 := sumCore_prot hc hGe (fun a h => absurd h (not_argCells_eq2 _)) a hpc (by simp [CapPW])
    show t0.memory a = _
    rw [h2]; exact h1
  · intro a hn hal
    have hn1 := notInObj_after hord0 hord hmono hnf hn hal
    have hal1 := allocated_mono hmono hal
    show t0.memory a = _
    rw [hfrz a hn1 hal1]
    exact hS.ok a hn hal


theorem sfi_loc {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} {n : Nat} {Γ : Gam} {p : Ptrs} {u : State σ}
    (h : SFI Γ0 s0 p0 w n Γ p u) (l : Locs) (c : Nat) : SFI Γ0 s0 p0 w n Γ p { u with locals := l, clock := c } :=
  ⟨ptRun_loc h.run l c, h.hts, h.hfb, h.hlive, h.slots, h.pk, h.ok⟩

def PS (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (w : BitVec 64) (n : Nat) (u : State σ) : Prop :=
  (∃ Γ p, SFI Γ0 s0 p0 w n Γ p u) ∧ ∃ o0, u.locals.lookup (nm "t") = some (.val (.word o0))

def PSt (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (w : BitVec 64) (i : Nat) (u : State σ) : Prop :=
  ∃ Γ p o, SFI Γ0 s0 p0 w (i - 1) Γ p u ∧ u.locals.lookup (nm "t") = some (.val (.word o)) ∧
    ∃ ob ∈ Γ, ob.base = o ∧ ob.ty = tsSlotTy i

theorem valid_word_l {s : State σ} {x : MlS} {w0 : BitVec 64} {v : ValueHOL 64}
    (hold : s.locals.lookup x = some (.val (.word w0)))
    (h : isValidValueHOLExact s.toExact .local x v = true) : ∃ w, v = .val (.word w) := by
  simp only [isValidValueHOLExact, lookupKvarHOLExact] at h
  split at h
  · rename_i old hold'
    have : old = .val (.word w0) := by
      have h1 : s.locals.lookup x = some old := hold'
      rw [hold] at h1
      exact (Option.some.inj h1).symm
    subst this
    have h1 := (shapeEqHOL_eq_true _ _).mp h
    refine val_of_shapeEq_one ((shapeEqHOL_eq_true _ _).mpr ?_)
    rw [h1, shapeOf_val]
  · simp at h

theorem sf_call_hoare {KL CP th i : Nat} (hi1 : 1 ≤ i) (hi8 : i ≤ 8) (hth : tsSlotTy i = th)
    {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64}
    (hcs : CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩ []) :
    Hoare σ guestCtx (PS Γ0 s0 p0 w (i - 1))
      (.call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw KL, cw CP])
      (fun r u => r = none ∧ PSt Γ0 s0 p0 w i u) := by
  refine hoare_callA (sf_new hcs) ?_
  intro s hs hP vs hvs callee v st hR hst hvalid
  obtain ⟨⟨Γ, p, hS⟩, o0, ho0⟩ := hP
  obtain rfl : vs = [.val (.word (BitVec.ofNat 64 KL)), .val (.word (BitVec.ofNat 64 CP))] := by
    rw [evs_cons (ev_cw s KL) (evs_cons (ev_cw s CP) evs_nil)] at hvs
    exact (Option.some.inj hvs).symm
  obtain ⟨wv, rfl⟩ := valid_word_l ho0 hvalid
  obtain ⟨Γ', p', o, hv, hS', ob, hob, hb, ht⟩ :=
    sf_call_step (th := th) (CP := CP) (KL := KL) (n := i - 1) (by omega) hS hR
      (by simp [shapeOfHOLExact, shapeEqHOL])
  cases hv
  refine ⟨rfl, Γ', p', _, ?_, lk_set_self _ _ _, ob, hob, hb, by rw [hth]; exact ht⟩
  exact sfi_loc hS' _ _


theorem rd_upd_self' (m : Mem) (a x : BitVec 64) : rd (Frames.upd m a x) a = x := rd_upd_self m a x

/-- `st ts + 8 i, t`: the table pointer is stored in slot `i`. -/
theorem sf_store_hoare {i : Nat} (hi1 : 1 ≤ i) (hi8 : i ≤ 8) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} :
    Hoare σ guestCtx (PSt Γ0 s0 p0 w i)
      (.store (.op .add [gv (nm "ts"), cw (8 * i)]) (lv (nm "t")))
      (fun r u => r = none ∧ PS Γ0 s0 p0 w i u) := by
  refine hoare_store fun s hs hP wa v mem hw hv hmem => ?_
  obtain ⟨Γ, p, o, hS, hlt, ob, hob, hb, ht⟩ := hP
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hz
  cases hz
  have hts : s.globals.lookup (nm "ts") = some (.val (.word w)) := lookup_of_gword hS.hts
  have hy' : y = w := by
    have : ev s (gv (nm "ts")) = some (.val (.word w)) := hts
    rw [this] at hy
    exact (HolWordLab.word.inj (ValueHOL.val.inj (Option.some.inj hy))).symm
  have hy2 := hy'.symm
  subst hy2
  have hv' : v = .val (.word o) := by
    rw [ev_lv, hlt] at hv; exact (Option.some.inj hv).symm
  subst hv'
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  have hord0 := ptRun_ord0 hS.run
  have hord := ptRun_ord hS.run
  have hbnd : w.toNat + 72 < 2 ^ 64 := by
    have := hS.hlive.2; have := hord.2.1; unfold heapEnd at *; omega
  have hov := overlap_slot (w := w) (i := i) (by omega) hS.hfb.1 hbnd
  have hn := (hS.hfb.2 _ hov).2
  have hal := alloc_of_fresh hord0 hord (hS.hfb.2 _ hov).1
  have hnotall := fresh_not_alloc hord0 hord hS.run.2.2.1 (hS.hfb.2 _ hov).1
  have hmod : ModifiesOnly (fun a => a = w + BitVec.ofNat 64 (8 * i)) (gz s).memory
      (gz { s with memory := Frames.upd s.memory (w + BitVec.ofNat 64 (8 * i)) o }).memory := by
    intro a ha
    show Frames.upd s.memory (w + BitVec.ofNat 64 (8 * i)) o a = s.memory a
    exact Frames.upd_ne _ _ ha
  have hr' : PtRun noD Γ0 s0 p0 Γ (gz { s with memory := Frames.upd s.memory (w + BitVec.ofNat 64 (8 * i)) o }) p :=
    ptRun_store_fresh hS.run hmod rfl rfl rfl (fun a ha => ha ▸ hn)
  have hL : Layout guestC p Γ := by
    obtain ⟨q, hq, -, hL, -⟩ := ptRun_G hS.run
    obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hS.run))
    exact hL
  have hne : ∀ a : BitVec 64, InObj Γ a.toNat → a ≠ w + BitVec.ofNat 64 (8 * i) := fun a ha e => hn (e ▸ ha)
  refine ⟨rfl, ⟨Γ, p, ⟨hr', hS.hts, hS.hfb, hS.hlive, ?_, ?_, ?_⟩⟩, ?_⟩
  · intro i' hi1' hi2'
    by_cases hii : i' = i
    · subst hii
      exact ⟨ob, hob, by show ob.base = rd (Frames.upd s.memory _ o) _; rw [rd_upd_self]; exact hb, ht⟩
    · obtain ⟨o', ho', hb', ht'⟩ := hS.slots i' hi1' (by omega)
      refine ⟨o', ho', ?_, ht'⟩
      have hcne : w + BitVec.ofNat 64 (8 * i') ≠ w + BitVec.ofNat 64 (8 * i) := by
        intro h
        have := congrArg BitVec.toNat h
        rw [toNat_add_ofNat (by omega), toNat_add_ofNat (by omega)] at this
        omega
      show o'.base = rd (Frames.upd s.memory _ o) _
      rw [rd_upd_ne _ _ hcne]
      exact hb'
  · intro a ha
    have hin : InObj Γ a.toNat := inObj_of_protCell hord hL (protCell_ext (C := guestC) hS.run.2.2.2.1 ha)
    show Frames.upd s.memory _ o a = _
    rw [Frames.upd_ne _ _ (hne a hin)]
    exact hS.pk a ha
  · intro a hna hal0
    have : a ≠ w + BitVec.ofNat 64 (8 * i) := fun e => hnotall (e ▸ hal0)
    show Frames.upd s.memory _ o a = _
    rw [Frames.upd_ne _ _ this]
    exact hS.ok a hna hal0
  · exact ⟨_, hlt⟩


/-- `gz` ignores an assignment to `ts`. -/
theorem gz_setTs (u : State σ) (v : ValueHOL 64) : gz (setKvarHOLFinite .global nmTs v u) = gz u := by
  show ({ u with globals := (u.globals.update (nmTs, v)).update (nmTs, .val (.word 0)) } : State σ) =
    { u with globals := u.globals.update (nmTs, .val (.word 0)) }
  congr 1
  apply hfm_ext
  intro k
  by_cases hk : nmTs = k <;> simp [HolFiniteMapExact.update, FUPDATE, hk]

/-- `ts = alloc(72)`. -/
theorem sf_s1 {Γ : Gam} {p : Ptrs} {s0 : State σ} (hG : G guestC (HR σ) Γ s0) (hp : ptrsOf s0 = some p)
    (hJ : JrNZ s0) (he : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) :
    Hoare σ guestCtx (fun u => u = s0) (.call (some (some (.global, nm "ts"), none)) (nm "alloc") [cw 72])
      (fun r u => r = none ∧ ∃ w Γ' p', SFI Γ s0 p w 0 Γ' p' u) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  refine hoare_callA ((sumSpecA_relX tab_alloc).and (allocSpec_alloc guestCtx_code)) ?_
  intro s hs hP vs hvs callee v st ⟨hR, hA⟩ hst hvalid
  subst hP
  obtain rfl : vs = [.val (.word (BitVec.ofNat 64 72))] := by
    rw [evs_cons (ev_cw s 72) evs_nil] at hvs; exact (Option.some.inj hvs).symm
  obtain ⟨q0, hq0, hord, hL, hF', hT, hGl, hW⟩ := id hG
  obtain ⟨w0, hw0, -⟩ := hGl nmTs _ gt_ts
  obtain ⟨o, rfl⟩ := Bal.valid_word_g (lookup_of_gword hw0) hvalid
  have hrun := ptRun_refl (D := noD) (fun _ => rfl) hG hp hJ he hc
  have hre : PtRun noD Γ s p Γ (callEntryStateHOLFinite s callee) p := ptRun_loc hrun callee (s.clock - 1)
  have hGe := ptRun_G hre
  have hpe := ptRun_ptrs hre
  obtain ⟨Γ', p0', p', hc0, -⟩ := hR (by simp [Good]) (not_abortive_ret _) Γ hGe
    ⟨p, hpe, argsOK_any (by simp) rfl⟩ reqOK_nil
  obtain rfl : p = p0' := (Option.some.inj (hc0.1.symm.trans hpe)).symm
  obtain ⟨hmem, hgl, p'', hp'', hord'', hm'', hq⟩ :=
    hA (by simp [Good]) (BitVec.ofNat 64 72) p rfl hpe (ordered_of_G hG hp)
  obtain ⟨q, hqo, -, hlive, -⟩ := hq _ rfl
  have hqq : q = o := by simpa using hqo.symm
  rw [hqq] at hlive
  have hpp : p'' = p' := Option.some.inj (hp''.symm.trans hc0.2.1)
  rw [hpp] at hlive
  have hc' := sumCore_pwM (PW' := fun a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) hc0
    (fun a h => ⟨h.1, absurd h.2 (by simp [CapPW])⟩)
  have hrun1 := ptRun_core hre (sg := ⟨[.any], [.freshArg 0 1 0], [], false⟩) (argsOK_any (by simp) rfl) hc'
    (by simp) (fun g _ h => by simp at h) (by simp)
    (fun g hg => hgl g (by intro e; subst e; revert hg; decide))
  have hret := hc0.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) o rfl (by simp [flattenHOL])
  obtain ⟨x', hx', hfb⟩ := hret
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx'
  subst hx'
  have hbn : (BitVec.ofNat 64 72).toNat = 72 := by decide
  rw [hbn, Nat.one_mul, Nat.add_zero] at hfb
  have hlive' : heapBase ≤ o.toNat ∧ o.toNat + 72 ≤ p'.hp := by
    have := hlive; simp only [Region.Live, hbn] at this; exact this
  have hrunG : PtRun noD Γ s p Γ' (gz { st with locals := s.locals }) p' := ptRun_gz (ptRun_loc hrun1 s.locals st.clock)
  refine ⟨rfl, o, Γ', p', ⟨?_, ?_, hfb, hlive', ?_, ?_, ?_⟩⟩
  · rw [gz_setTs]; exact hrunG
  · unfold gword; show (match (st.globals.update (nmTs, .val (.word o))).lookup nmTs with | some (ValueHOL.val (HolWordLab.word w)) => some w | x => none) = _
    simp [HolFiniteMapExact.update, FUPDATE]
  · intro i h1 h2; omega
  · intro a ha
    show st.memory a = _
    rw [show st.memory = s.memory from hmem]
  · intro a _ _
    show st.memory a = _
    rw [show st.memory = s.memory from hmem]


/-- A store into slot `k` of the fresh block keeps the invariant (`n'` slots known afterwards). -/
theorem sfi_store {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} {n n' k : Nat} {Γ : Gam} {p : Ptrs}
    {s : State σ} (hS : SFI Γ0 s0 p0 w n Γ p s) (hn'8 : n' ≤ 8) (hk : k < 9) (hnk : ∀ i', 1 ≤ i' → i' ≤ n → i' ≠ k)
    (x : BitVec 64)
    (hn' : ∀ i', 1 ≤ i' → i' ≤ n' → i' ≤ n ∨ (i' = k ∧ ∃ ob ∈ Γ, ob.base = x ∧ ob.ty = tsSlotTy k)) :
    SFI Γ0 s0 p0 w n' Γ p { s with memory := Frames.upd s.memory (w + BitVec.ofNat 64 (8 * k)) x } := by
  have hord0 := ptRun_ord0 hS.run
  have hord := ptRun_ord hS.run
  have hbnd : w.toNat + 72 < 2 ^ 64 := by
    have := hS.hlive.2; have := hord.2.1; unfold heapEnd at *; omega
  have hov := overlap_slot (w := w) (i := k) hk hS.hfb.1 hbnd
  have hn := (hS.hfb.2 _ hov).2
  have hnotall := fresh_not_alloc hord0 hord hS.run.2.2.1 (hS.hfb.2 _ hov).1
  have hmod : ModifiesOnly (fun a => a = w + BitVec.ofNat 64 (8 * k)) (gz s).memory
      (gz { s with memory := Frames.upd s.memory (w + BitVec.ofNat 64 (8 * k)) x }).memory := by
    intro a ha
    show Frames.upd s.memory (w + BitVec.ofNat 64 (8 * k)) x a = s.memory a
    exact Frames.upd_ne _ _ ha
  have hr' : PtRun noD Γ0 s0 p0 Γ (gz { s with memory := Frames.upd s.memory (w + BitVec.ofNat 64 (8 * k)) x }) p :=
    ptRun_store_fresh hS.run hmod rfl rfl rfl (fun a ha => ha ▸ hn)
  have hL : Layout guestC p Γ := by
    obtain ⟨q, hq, -, hL, -⟩ := ptRun_G hS.run
    obtain rfl : q = p := Option.some.inj (hq.symm.trans (ptRun_ptrs hS.run))
    exact hL
  have hne : ∀ a : BitVec 64, InObj Γ a.toNat → a ≠ w + BitVec.ofNat 64 (8 * k) := fun a ha e => hn (e ▸ ha)
  refine ⟨hr', hS.hts, hS.hfb, hS.hlive, ?_, ?_, ?_⟩
  · intro i' hi1' hi2'
    rcases hn' i' hi1' hi2' with hle | ⟨rfl, ob, hob, hb, ht⟩
    · obtain ⟨o', ho', hb', ht'⟩ := hS.slots i' hi1' hle
      refine ⟨o', ho', ?_, ht'⟩
      have hcne : w + BitVec.ofNat 64 (8 * i') ≠ w + BitVec.ofNat 64 (8 * k) := by
        intro h
        have := congrArg BitVec.toNat h
        rw [toNat_add_ofNat (by omega), toNat_add_ofNat (by omega)] at this
        have := hnk i' hi1' hle
        omega
      show o'.base = rd (Frames.upd s.memory _ x) _
      rw [rd_upd_ne _ _ hcne]
      exact hb'
    · exact ⟨ob, hob, by show ob.base = rd (Frames.upd s.memory _ x) _; rw [rd_upd_self]; exact hb, ht⟩
  · intro a ha
    have hin : InObj Γ a.toNat := inObj_of_protCell hord hL (protCell_ext (C := guestC) hS.run.2.2.2.1 ha)
    show Frames.upd s.memory _ x a = _
    rw [Frames.upd_ne _ _ (hne a hin)]
    exact hS.pk a ha
  · intro a hna hal0
    have : a ≠ w + BitVec.ofNat 64 (8 * k) := fun e => hnotall (e ▸ hal0)
    show Frames.upd s.memory _ x a = _
    rw [Frames.upd_ne _ _ this]
    exact hS.ok a hna hal0

theorem gt_bs : Types.guestC.GT.lookup (nm "bs") = some (.nptr tBS) := by decide

/-- `st ts + 0, bs`. -/
theorem sf_store0_hoare {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} :
    Hoare σ guestCtx (fun u => ∃ Γ p, SFI Γ0 s0 p0 w 0 Γ p u)
      (.store (.op .add [gv (nm "ts"), cw 0]) (gv (nm "bs")))
      (fun r u => r = none ∧ ∃ Γ p, SFI Γ0 s0 p0 w 0 Γ p u) := by
  refine hoare_store fun s hs hP wa v mem hw hv hmem => ?_
  obtain ⟨Γ, p, hS⟩ := hP
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hz
  cases hz
  have hts : s.globals.lookup (nm "ts") = some (.val (.word w)) := lookup_of_gword hS.hts
  have hy' : y = w := by
    have : ev s (gv (nm "ts")) = some (.val (.word w)) := hts
    rw [this] at hy
    exact (HolWordLab.word.inj (ValueHOL.val.inj (Option.some.inj hy))).symm
  have hy2 := hy'.symm
  subst hy2
  obtain ⟨-, -, -, -, -, -, hGl, -⟩ := ptRun_G hS.run
  obtain ⟨b, hb, -⟩ := hGl (nm "bs") _ gt_bs
  have hbl : s.globals.lookup (nm "bs") = some (.val (.word b)) := by
    have := lookup_of_gword hb
    rw [gz_lookup s (nm "bs") (by decide)] at this
    exact this
  have hv' : v = .val (.word b) := by
    have : ev s (gv (nm "bs")) = some (.val (.word b)) := hbl
    rw [this] at hv; exact (Option.some.inj hv).symm
  subst hv'
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  refine ⟨rfl, Γ, p, ?_⟩
  have := sfi_store (n' := 0) (k := 0) hS (by omega) (by omega) (fun i' h1 h2 => by omega) b (fun i' h1 h2 => by omega)
  exact this


def QFin (Γ : Gam) (p : Ptrs) (s0 t : State σ) : Prop :=
  ∃ Γ' p', StepD Γ p s0 Γ' p' t ∧ (∀ a, ProtCell guestC Γ a → t.memory a = s0.memory a) ∧
    (∀ a : BitVec 64, ¬ InObj Γ a.toNat → p.Allocated a.toNat → t.memory a = s0.memory a) ∧
    (∀ g ∈ guestC.PG, g ≠ Hooks.gJn → t.globals.lookup g = s0.globals.lookup g) ∧
    (∀ g, ptW.contains g = false → t.globals.lookup g = s0.globals.lookup g) ∧
    JrNZ t ∧ (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧ (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax) ∧
    (∃ w, gword t nmTs = some w ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tTS)

def QF (Γ : Gam) (p : Ptrs) (s0 : State σ) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => ∀ v, r = some (.returned v) → QFin Γ p s0 t

theorem qfin_loc {Γ : Gam} {p : Ptrs} {s0 t : State σ} (h : QFin Γ p s0 t) (l : Locs) (c : Nat) :
    QFin Γ p s0 { t with locals := l, clock := c } := by
  obtain ⟨Γ', p', hs, h1, h2, h3, h4, h5, ⟨e, he, he'⟩, ⟨c', hc, hc'⟩, ⟨w, hw, o, ho, hb, ht⟩⟩ := h
  exact ⟨Γ', p', stepD_loc hs l c, h1, h2, h3, h4, jrNZ_congr (s := t) rfl h5, ⟨e, he, he'⟩, ⟨c', hc, hc'⟩,
    ⟨w, hw, o, ho, hb, ht⟩⟩

theorem locIns_QF {Γ : Gam} {p : Ptrs} {s0 : State σ} : LocIns (QF Γ p s0) :=
  fun r t l c h v hv => qfin_loc (h v hv) l c



theorem gt_jn : Types.guestC.GT.lookup Hooks.gJn = some .scalar := by decide
theorem jn_ptW : ptW.contains Hooks.gJn = true := by decide

theorem ptRun_setJn {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {u : State σ} {p : Ptrs} (h : PtRun D Γ0 s0 p0 Γ u p) :
    PtRun D Γ0 s0 p0 Γ (setKvarHOLFinite .global Hooks.gJn (.val (.word 0)) u) p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13⟩ := h
  have hg : ∀ g, g ≠ Hooks.gJn → gword (setKvarHOLFinite .global Hooks.gJn (.val (.word 0)) u) g = gword u g :=
    fun g hne => HtabEntries.gword_setG_ne hne
  refine ⟨h1, ?_, h3, h4, h5, ?_, ?_, h8, ?_, ?_, ?_, h12, ?_⟩
  · unfold ptrsOf
    rw [hg gHeap (by decide), hg gFrame (by decide), hg gScratch (by decide)]
    exact h2
  · obtain ⟨q, hq, hord, hL, hF, hT, hGl, hW⟩ := id h6
    obtain ⟨J, hJ, -⟩ := hGl Hooks.gJn _ gt_jn
    exact G_jn_zero h6 (lookup_of_gword hJ)
  · intro g hg' hn
    rw [HtabEntries.setG_ne hn]; exact h7 g hg' hn
  · exact jrNZ_of_gword (fun g hgj => hg g (by simp [Frames.jrGs] at hgj; rcases hgj with rfl | rfl <;> decide)) h9
  · obtain ⟨e, he, hs⟩ := h10
    exact ⟨e, by rw [hg _ (by decide)]; exact he, hs⟩
  · obtain ⟨e, he, hs⟩ := h11
    exact ⟨e, by rw [hg _ (by decide)]; exact he, hs⟩
  · intro g hg'
    have : g ≠ Hooks.gJn := fun e => by rw [e] at hg'; rw [jn_ptW] at hg'; cases hg'
    rw [HtabEntries.setG_ne this]; exact h13 g hg'

theorem gz_setJn (u : State σ) :
    gz (setKvarHOLFinite .global Hooks.gJn (.val (.word 0)) u) = setKvarHOLFinite .global Hooks.gJn (.val (.word 0)) (gz u) := by
  show ({ u with globals := (u.globals.update (Hooks.gJn, .val (.word 0))).update (nmTs, .val (.word 0)) } : State σ) =
    { u with globals := (u.globals.update (nmTs, .val (.word 0))).update (Hooks.gJn, .val (.word 0)) }
  congr 1
  apply hfm_ext
  intro k
  have hne : nmTs ≠ Hooks.gJn := by decide
  by_cases h1 : nmTs = k
  · subst h1
    have : Hooks.gJn ≠ nmTs := Ne.symm hne
    simp [HolFiniteMapExact.update, FUPDATE, this]
  · by_cases h2 : Hooks.gJn = k
    · subst h2; simp [HolFiniteMapExact.update, FUPDATE, h1]
    · simp [HolFiniteMapExact.update, FUPDATE, h1, h2]

theorem sfi_jn {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} {n : Nat} {Γ : Gam} {p : Ptrs} {u : State σ}
    (h : SFI Γ0 s0 p0 w n Γ p u) :
    SFI Γ0 s0 p0 w n Γ p (setKvarHOLFinite .global Hooks.gJn (.val (.word 0)) u) :=
  ⟨by rw [gz_setJn]; exact ptRun_setJn h.run,
    by rw [show gword (setKvarHOLFinite .global Hooks.gJn (.val (.word 0)) u) nmTs = gword u nmTs from
        HtabEntries.gword_setG_ne (by decide)]; exact h.hts,
    h.hfb, h.hlive, h.slots, h.pk, h.ok⟩


theorem tsSlot_eq : ∀ k, 1 ≤ k → k ≤ 8 → (Types.guestC.ty tTS).slot k = .ptr (tsSlotTy k) := by
  intro k h1 h2
  interval_cases k <;> decide

theorem plain_tTS : Plain tTS := by unfold Plain; decide
theorem tags_tTS : Types.guestC.tags.lookup tTS = none := by decide

theorem tsSlot0 : (Types.guestC.ty tTS).slot 0 = .scalar := by decide

/-- **The end of `state_fresh_tx`**: adopt `ts`, set the real global, return. -/
theorem qfin_of_sfi {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} {Γ : Gam} {p : Ptrs} {u : State σ}
    (hG0 : G guestC (HR σ) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (h : SFI Γ0 s0 p0 w 8 Γ p u) : QFin Γ0 p0 s0 u := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have hord0 := ptRun_ord0 h.run
  have hord := ptRun_ord h.run
  have hGg := ptRun_G h.run
  have hpg := ptRun_ptrs h.run
  have hL : Layout guestC p Γ := by
    obtain ⟨q, hq, -, hL, -⟩ := id hGg
    have := Option.some.inj (hq.symm.trans hpg)
    subst this; exact hL
  let x : Obj := ⟨w, tTS, 72⟩
  have hw72 : w.toNat + 72 < 2 ^ 64 := by
    have := h.hlive.2; have := hord.2.1; unfold heapEnd at *; omega
  have hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat := fun a ha =>
    freshBuf_disj hL (by decide) h.hfb ha.1 ha.2 hw72
  have hreg : (Types.guestC.ty tTS).region = .heap := by decide
  have hGx : G guestC (HR σ) (Γ ++ [x]) (gz u) := by
    refine g_adopt_plain hGg hpg (x := x) plain_tTS tags_tTS (by simpa [Obj.lo, x] using h.hfb.1)
      (by show 72 % 8 = 0; decide) (by show (Types.guestC.ty tTS).minSz ≤ 72; decide) (by show 0 < 72; decide)
      (by show (Types.guestC.ty tTS).region.Live p w.toNat 72; rw [hreg]; exact h.hlive) hdisj ?_
    intro k hk
    have hk8 : k ≤ 8 := by unfold Obj.HasSlot at hk; show k ≤ 8; simp only [x] at hk; omega
    show Fits (Γ ++ [x]) ((Types.guestC.ty tTS).slot k) _
    by_cases hk0 : k = 0
    · subst hk0; rw [tsSlot0]; trivial
    · rw [tsSlot_eq k (by omega) hk8]
      obtain ⟨o, ho, hb, ht⟩ := h.slots k (by omega) hk8
      exact ⟨o, List.mem_append_left _ ho, hb, ht⟩
  have hu : u = setKvarHOLFinite .global nmTs (.val (.word w)) (gz u) := by
    show u = ({ u with globals := (u.globals.update (nmTs, .val (.word 0))).update (nmTs, .val (.word w)) } : State σ)
    have hl := lookup_of_gword h.hts
    have hgX : (u.globals.update (nmTs, .val (.word 0))).update (nmTs, .val (.word w)) = u.globals := by
      apply hfm_ext
      intro k
      by_cases hk : nmTs = k
      · subst hk; simp [HolFiniteMapExact.update, FUPDATE, hl]
      · simp [HolFiniteMapExact.update, FUPDATE, hk]
    rw [hgX]
  have hGr : G guestC (HR σ) (Γ ++ [x]) u := by
    have := Bal.trk_gset (PW := fun _ => False) (Γ0 := Γ ++ [x]) (s0 := gz u) (p0 := p) hF.hH hA
      (Struct.trk_refl hGx hpg) gt_ts (w := w)
      (Or.inr ⟨x, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl⟩) ts_notPG
    obtain ⟨p', -, -, -, -, hG', -⟩ := this
    rw [hu]; exact hG'
  have hstep : StepD Γ0 p0 s0 (Γ ++ [x]) p u := by
    refine ⟨hp0, (ptrsOf_gz u).symm.trans hpg, h.run.2.2.1, ext_trans h.run.2.2.2.1 (ext_append Γ x), ?_, hG0, hGr⟩
    intro o ho a ha1 ha2
    rcases List.mem_append.mp ho with ho | ho
    · exact h.run.2.2.2.2.1 o ho a ha1 ha2
    · simp only [List.mem_singleton] at ho
      subst ho
      refine Or.inr ?_
      have := fresh_byte (Γ := Γ) hord0 hord (w := w) (n := 72) (by decide) h.hfb (a := a.toNat)
        (by simpa [Obj.lo, x] using ha1) (by simpa [Obj.hi, x] using ha2) a.isLt
      simpa using this
  obtain ⟨-, -, -, -, -, -, h7, -, h9, ⟨e, he, hes⟩, ⟨c, hc, hcs⟩, -, h13⟩ := h.run
  have hne : ∀ g, g ≠ nmTs → u.globals.lookup g = (gz u).globals.lookup g := fun g hg => (gz_lookup u g hg).symm
  refine ⟨Γ ++ [x], p, hstep, h.pk, h.ok, ?_, ?_, ?_, ⟨e, ?_, hes⟩, ⟨c, ?_, hcs⟩, ⟨w, h.hts, x, ?_, rfl, rfl⟩⟩
  · intro g hg hn
    rw [hne g (fun e => ts_notPG (e ▸ hg))]; exact h7 g hg hn
  · intro g hg
    have : g ≠ nmTs := fun e => by rw [e] at hg; rw [ts_ptW] at hg; cases hg
    rw [hne g this]; exact h13 g hg
  · refine jrNZ_of_lookup (fun g hg => hne g ?_) h9
    intro e; subst e; revert hg; decide
  · unfold gword at he ⊢
    rw [hne _ (by decide)]; exact he
  · unfold gword at hc ⊢
    rw [hne _ (by decide)]; exact hc
  · exact List.mem_append_right _ (List.mem_singleton.mpr rfl)


theorem sf_end {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} (hG0 : G guestC (HR σ) Γ0 s0)
    (hp0 : ptrsOf s0 = some p0) :
    Hoare σ guestCtx (fun u => ∃ Γ p, SFI Γ0 s0 p0 w 8 Γ p u)
      (.seq (.assign .global Hooks.gJn (cw 0)) (.return (cw 0))) (QF Γ0 p0 s0) := by
  refine hoare_seqP (Rn := fun u => ∃ Γ p, SFI Γ0 s0 p0 w 8 Γ p u) ?_ ?_
  · refine hoare_assignK fun s hs hP v hv _ => ?_
    rw [ev_cw] at hv; cases hv
    obtain ⟨Γ, p, hS⟩ := hP
    exact ⟨rfl, Γ, p, sfi_jn hS⟩
  · refine hoare_return fun s hs ⟨Γ, p, hS⟩ v hv v' hv' => ?_
    exact qfin_loc (qfin_of_sfi hG0 hp0 hS) _ _

theorem hs_20_64_h20 : CSumm σ guestCtx guestC (HR σ) (nm "htab_new")
    ⟨[.eq 20, .eq 64], [.fits (.ptr tHTh20)], [], true⟩ [] :=
  Bal.csumm_htab_new_ty (q := (20, 64)) (by decide) (th := tHTh20) (by decide) (by decide) (by decide)
theorem hs_52_64_h52 : CSumm σ guestCtx guestC (HR σ) (nm "htab_new")
    ⟨[.eq 52, .eq 64], [.fits (.ptr tHTh52)], [], true⟩ [] :=
  Bal.csumm_htab_new_ty (q := (52, 64)) (by decide) (th := tHTh52) (by decide) (by decide) (by decide)
theorem hs_20_16_t20 : CSumm σ guestCtx guestC (HR σ) (nm "htab_new")
    ⟨[.eq 20, .eq 16], [.fits (.ptr tHTt20)], [], true⟩ [] :=
  Bal.csumm_htab_new_ty (q := (20, 16)) (by decide) (th := tHTt20) (by decide) (by decide) (by decide)
theorem hs_20_16_h20 : CSumm σ guestCtx guestC (HR σ) (nm "htab_new")
    ⟨[.eq 20, .eq 16], [.fits (.ptr tHTh20)], [], true⟩ [] :=
  Bal.csumm_htab_new_ty (q := (20, 16)) (by decide) (th := tHTh20) (by decide) (by decide) (by decide)
theorem hs_52_16_h52 : CSumm σ guestCtx guestC (HR σ) (nm "htab_new")
    ⟨[.eq 52, .eq 16], [.fits (.ptr tHTh52)], [], true⟩ [] :=
  Bal.csumm_htab_new_ty (q := (52, 16)) (by decide) (th := tHTh52) (by decide) (by decide) (by decide)
theorem hs_32_16_c32 : CSumm σ guestCtx guestC (HR σ) (nm "htab_new")
    ⟨[.eq 32, .eq 16], [.fits (.ptr tHTc32)], [], true⟩ [] :=
  Bal.csumm_htab_new_ty (q := (32, 16)) (by decide) (th := tHTc32) (by decide) (by decide) (by decide)

theorem sf_rest {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {w : BitVec 64} (hG0 : G guestC (HR σ) Γ0 s0)
    (hp0 : ptrsOf s0 = some p0) :
    Hoare σ guestCtx (fun u => ∃ Γ p, SFI Γ0 s0 p0 w 0 Γ p u) sf1 (QF Γ0 p0 s0) := by
  have hE := sf_end (w := w) hG0 hp0
  have hPS : ∀ i, Hoare σ guestCtx (PS Γ0 s0 p0 w i) sf17 (QF Γ0 p0 s0) → True := fun _ _ => trivial
  have E8 : Hoare σ guestCtx (PS Γ0 s0 p0 w 8) sf17 (QF Γ0 p0 s0) := by
    unfold sf17
    exact hoare_pre hE fun u _ h => h.1
  have H16 : Hoare σ guestCtx (PSt Γ0 s0 p0 w 8) sf16 (QF Γ0 p0 s0) := by
    unfold sf16; exact hoare_seqP (sf_store_hoare (by omega) (by omega)) E8
  have H15 : Hoare σ guestCtx (PS Γ0 s0 p0 w 7) sf15 (QF Γ0 p0 s0) := by
    unfold sf15; exact hoare_seqP (sf_call_hoare (i := 8) (by omega) (by omega) (by decide) hs_52_16_h52) H16
  have H14 : Hoare σ guestCtx (PSt Γ0 s0 p0 w 7) sf14 (QF Γ0 p0 s0) := by
    unfold sf14; exact hoare_seqP (sf_store_hoare (by omega) (by omega)) H15
  have H13 : Hoare σ guestCtx (PS Γ0 s0 p0 w 6) sf13 (QF Γ0 p0 s0) := by
    unfold sf13; exact hoare_seqP (sf_call_hoare (i := 7) (by omega) (by omega) (by decide) hs_20_16_h20) H14
  have H12 : Hoare σ guestCtx (PSt Γ0 s0 p0 w 6) sf12 (QF Γ0 p0 s0) := by
    unfold sf12; exact hoare_seqP (sf_store_hoare (by omega) (by omega)) H13
  have H11 : Hoare σ guestCtx (PS Γ0 s0 p0 w 5) sf11 (QF Γ0 p0 s0) := by
    unfold sf11; exact hoare_seqP (sf_call_hoare (i := 6) (by omega) (by omega) (by decide) hs_32_16_c32) H12
  have H10 : Hoare σ guestCtx (PSt Γ0 s0 p0 w 5) sf10 (QF Γ0 p0 s0) := by
    unfold sf10; exact hoare_seqP (sf_store_hoare (by omega) (by omega)) H11
  have H9 : Hoare σ guestCtx (PS Γ0 s0 p0 w 4) sf9 (QF Γ0 p0 s0) := by
    unfold sf9; exact hoare_seqP (sf_call_hoare (i := 5) (by omega) (by omega) (by decide) hs_52_16_h52) H10
  have H8 : Hoare σ guestCtx (PSt Γ0 s0 p0 w 4) sf8 (QF Γ0 p0 s0) := by
    unfold sf8; exact hoare_seqP (sf_store_hoare (by omega) (by omega)) H9
  have H7 : Hoare σ guestCtx (PS Γ0 s0 p0 w 3) sf7 (QF Γ0 p0 s0) := by
    unfold sf7; exact hoare_seqP (sf_call_hoare (i := 4) (by omega) (by omega) (by decide) hs_20_16_t20) H8
  have H6 : Hoare σ guestCtx (PSt Γ0 s0 p0 w 3) sf6 (QF Γ0 p0 s0) := by
    unfold sf6; exact hoare_seqP (sf_store_hoare (by omega) (by omega)) H7
  have H5 : Hoare σ guestCtx (PS Γ0 s0 p0 w 2) sf5 (QF Γ0 p0 s0) := by
    unfold sf5; exact hoare_seqP (sf_call_hoare (i := 3) (by omega) (by omega) (by decide) hs_52_64_h52) H6
  have H4 : Hoare σ guestCtx (PSt Γ0 s0 p0 w 2) sf4 (QF Γ0 p0 s0) := by
    unfold sf4; exact hoare_seqP (sf_store_hoare (by omega) (by omega)) H5
  have H3 : Hoare σ guestCtx (PS Γ0 s0 p0 w 1) sf3 (QF Γ0 p0 s0) := by
    unfold sf3; exact hoare_seqP (sf_call_hoare (i := 2) (by omega) (by omega) (by decide) hs_20_64_h20) H4
  have H2 : Hoare σ guestCtx (PSt Γ0 s0 p0 w 1) sf2 (QF Γ0 p0 s0) := by
    unfold sf2; exact hoare_seqP (sf_store_hoare (by omega) (by omega)) H3
  unfold sf1
  refine hdecCallK (locIns_resIns locIns_QF _) (sf_new hs_20_64_h20) ?_
  intro s hs ⟨Γ, p, hS⟩ vs hvs callee v st hR hst hsh
  obtain rfl : vs = [.val (.word (BitVec.ofNat 64 20)), .val (.word (BitVec.ofNat 64 64))] := by
    rw [evs_cons (ev_cw s 20) (evs_cons (ev_cw s 64) evs_nil)] at hvs
    exact (Option.some.inj hvs).symm
  obtain ⟨Γ', p', o, hv, hS', ob, hob, hb, ht⟩ := sf_call_step (n := 0) (th := tHTh20) (by omega) hS hR hsh
  subst hv
  refine hoare_pre H2 ?_
  intro t _ ht'
  subst ht'
  exact ⟨Γ', p', o, sfi_loc hS' _ _, lk_set_self _ _ _, ob, hob, hb, by show ob.ty = tsSlotTy 1; rw [show tsSlotTy 1 = tHTh20 by decide]; exact ht⟩


/-- What `state_fresh_tx` leaves, for an entry typing `Γ` and allocator state `p`. -/
def SfR (s t : State σ) : Prop :=
  ∀ Γ p, G guestC (HR σ) Γ s → ptrsOf s = some p → JrNZ s → (∃ e, gword s nmEv = some e ∧ e.toNat < nullMax) →
    (∃ c, gword s nmCC = some c ∧ c.toNat < nullMax) → QFin Γ p s t

/-- **`state_fresh_tx`.** -/
theorem sf_spec : FunSpec σ guestCtx (nm "state_fresh_tx") (fun vs s r t => ∀ v, r = .returned v → SfR s t) := by
  refine funSpec_of_hoare (R := fun vs s v t => SfR s t) ?_
  intro vs body callee rs hl s0 hs0 hloc
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := Struct.lookupCode_zero sfCode hl
  have H : ∀ Γp : Gam × Ptrs, Hoare σ guestCtx (fun t => t = s0) sfBody
      (fun r t => G guestC (HR σ) Γp.1 s0 → ptrsOf s0 = some Γp.2 → JrNZ s0 →
        (∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax) → (∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) →
        ∀ v, r = some (.returned v) → QFin Γp.1 Γp.2 s0 t) := by
    rintro ⟨Γ, p⟩
    by_cases hP : G guestC (HR σ) Γ s0 ∧ ptrsOf s0 = some p ∧ JrNZ s0 ∧
        (∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax) ∧ (∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax)
    swap
    · intro s hs hP' ht hG hp hJ he hc
      subst hP'
      exact absurd ⟨hG, hp, hJ, he, hc⟩ hP
    obtain ⟨hG, hp, hJ, he, hc⟩ := hP
    have Hmain : Hoare σ guestCtx (fun t => t = s0) sfBody (QF Γ p s0) := by
      unfold sfBody
      refine hoare_seqP (Rn := fun u => ∃ w Γ' p', SFI Γ s0 p w 0 Γ' p' u) (sf_s1 hG hp hJ he hc) ?_
      refine hoare_exists (P := fun w u => ∃ Γ' p', SFI Γ s0 p w 0 Γ' p' u) fun w => ?_
      unfold sf0
      exact hoare_seqP (sf_store0_hoare (Γ0 := Γ) (s0 := s0) (p0 := p) (w := w)) (sf_rest hG hp)
    exact hoare_post Hmain fun r t _ _ hq _ _ _ _ _ => hq
  exact hoare_post (hoare_forall H) fun r t _ _ h v hv Γ p hG hp hJ he hc => h (Γ, p) hG hp hJ he hc v hv


end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.sf_spec
