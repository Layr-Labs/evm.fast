import InitECandidate.Solver.MemSafe.Frames.PmRoot
import InitECandidate.Solver.MemSafe.Frames.StartX

/-!
# Entry: the `CK_SNAPSHOT` store `st cur_cont + 24, snapshot` on the chain extension

`ck3_write`: a memory change confined to the cell `cur_cont + 24` (CK slot 3, a `prot` slot that no
chain, `Φ`, `GP` or `GR` fact reads) keeps `G`, `ChainX`, `Φ` and `JrNZ`. A copy of `top_write` /
`done_writeX` with the cell set `K3Cell c`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The cell `c + 24` (CK slot 3). -/
def K3Cell (c a : BitVec 64) : Prop := a = c + BitVec.ofNat 64 24

theorem not_k3 {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {oc o : Obj} (hoc : oc ∈ Γ) (ho : o ∈ Γ) (hsc : 104 ≤ oc.size) {k : Nat} (hk : k < o.size)
    (h : o.base ≠ oc.base ∨ k ≠ 24) : ¬ K3Cell oc.base (o.base + BitVec.ofNat 64 k) :=
  fun he => cell_ne hord hL ho hoc hk (by omega) h he

/-- **`st cur_cont + 24, w` on the extension.** -/
theorem ck3_write {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ : Gam}
    {u t : State σ} {c w : BitVec 64} (hG : G guestC H Γ u)
    (hx : ChainX guestC tEV tCK GP GR Γ u) (hc : gword u nmCC = some c)
    (hm : t.memory = upd u.memory (c + BitVec.ofNat 64 24) w) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    ∃ p, RunT guestC H gw Γ u Γ t p p ∧ ChainX guestC tEV tCK GP GR Γ t ∧ Phi t = Phi u ∧
      RootK u t := by
  obtain ⟨fs, hL, hE⟩ := hx
  obtain ⟨p, e, c', rest, oe, oc, hps, hord, hLy, hfs, he, hc', hoe, hoeb, hoet, hoc, hocb, hoct,
    hse, hsc, hne⟩ := top_objs hF hG hL
  rw [hc, Option.some.injEq] at hc'
  subst hc' hoeb hocb
  have hmod : ModifiesOnly (K3Cell oc.base) u.memory t.memory := by
    rw [hm]; exact modifiesOnly_upd (R := K3Cell oc.base) (modifiesOnly_refl _ _) (w := oc.base + BitVec.ofNat 64 24) rfl _
  have hsafe : SafeCells guestC H Γ u (K3Cell oc.base) := by
    intro a ha
    unfold K3Cell at ha
    subst ha
    exact safe_ck hF hLy hoc hoct (j := 3) (by omega) (by omega) (by simp [Obj.cell])
  have hG' : G guestC H Γ t := G_safe hF.hooks hG hsafe hmod hg hd hbe
  have hrun : Run guestC H gw Γ u Γ t p p := by
    refine ⟨hps, by rw [ptrsOf_congr hg]; exact hps, Frames.mono_refl p, Frames.ext_refl Γ,
      Frames.newFresh_refl Γ p, hG', fun a ha => hmod a fun hr => ha ?_, fun g _ _ => by rw [hg]⟩
    obtain ⟨o, ho, k, hk, -, -, he, -⟩ := hsafe a hr
    by_cases hp : (guestC.ty o.ty).slot k = .prot
    · exact Or.inr (Or.inl ⟨o, ho, k, hk, hp, he⟩)
    · exact Or.inl ⟨o, ho, k, hk, hp, he⟩
  have hnE := hL.nodupE
  have hnC := hL.nodupC
  rw [hfs] at hnE hnC
  simp only [List.map_cons] at hnE hnC
  have keep : ∀ o ∈ Γ, ∀ k, k < o.size → (o.base ≠ oc.base ∨ k ≠ 24) →
      fld t.memory o.base k = fld u.memory o.base k := by
    intro o ho k hk h
    have := hmod _ (not_k3 hord hLy hoc ho hsc hk h)
    unfold fld rd; rw [this]
  have hneC : ∀ o ∈ Γ, o.ty ≠ tCK → o.base ≠ oc.base := fun o ho hty =>
    base_ne_of_ty hLy ho hoc (by rw [hoct]; exact hty)
  have hneE : ∀ o ∈ Γ, o.ty ≠ tEV → o.base ≠ oe.base := fun o ho hty =>
    base_ne_of_ty hLy ho hoe (by rw [hoet]; exact hty)
  have hkeep : ChainKeep u t fs := by
    refine ⟨gword_congr hg _, gword_congr hg _, ?_, ?_, ?_, ?_, ?_⟩
    · intro f hf k hk
      obtain ⟨o, ho, hob, hot⟩ := ck_obj hL hf
      rw [← hob]
      have hk' : k = 0 ∨ k = 8 ∨ k = 16 ∨ k = 48 ∨ k = 56 ∨ k = 72 ∨ k = 80 := by
        simpa [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize]
          using hk
      exact keep o ho k (by have := ck_size hF hLy ho hot; omega) (Or.inr (by omega))
    · intro f hf k hk
      rw [hfs] at hf
      obtain ⟨o, ho, hob, hot⟩ := ev_obj hL (f := f) (by rw [hfs]; exact List.mem_cons_of_mem _ hf)
      rw [← hob]
      have hk' : k < 280 := by
        simp [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen] at hk
        omega
      exact keep o ho k (by have := ev_size hF hLy ho hot; omega)
        (Or.inl (hneC o ho (by rw [hot]; exact hF.ne)))
    · intro f hf k hk
      rw [hfs] at hf
      simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      subst hf
      have hk' : k = 24 ∨ k = 40 := by simpa [evMem, evMemCap] using hk
      exact keep oe hoe k (by omega) (Or.inl hne)
    · intro p' hp'
      exact ⟨p', by rw [← ptrsOf_congr hg]; exact hp', rfl⟩
    · intro f hf k hk
      obtain ⟨o, ho, hob, hot⟩ := ev_obj hL hf
      rw [← hob]
      have hk' : k = 144 ∨ k = 216 := by simpa [evRetd, evRetdCap] using hk
      exact keep o ho k (by have := ev_size hF hLy ho hot; omega)
        (Or.inl (hneC o ho (by rw [hot]; exact hF.ne)))
  have hst : GStep guestC tEV Γ Γ u t oe.base := by
    refine gStep_refl hps (by rw [ptrsOf_congr hg]; exact hps) hord hLy fun e' he' het hne' => ?_
    have hsz := ev_size hF hLy he' het
    have hnc := hneC e' he' (by rw [het]; exact hF.ne)
    exact ⟨keep e' he' 8 (by omega) (Or.inl hnc), keep e' he' 24 (by omega) (Or.inl hnc)⟩
  have hch' : ChainL guestC tEV tCK Γ t fs :=
    chainL_keep hL hkeep (top := oe.base) (fun f hf => by
      rw [hfs] at hf; simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      rw [← hf]) hst
  have hE' : ChainE GP GR Γ t fs := by
    refine chainE_step xCfg_guest hst (fun f hf => ⟨fun j hj => ?_, fun o ho hot j hj hpr => ?_⟩)
      (fun f hf k hk => ?_) hE
    · obtain ⟨x, hx, hxb, hxt⟩ := (hL.objs f hf).1
      have hsz := ev_size hF hLy hx hxt
      have hj' : j = 11 ∨ j = 14 ∨ j = 17 ∨ j = 26 ∨ j = 28 := by simpa [evXSlots] using hj
      rw [← hxb]
      exact keep x hx (8 * j) (by omega) (Or.inl (hneC x hx (by rw [hxt]; exact hF.ne)))
    · have hty : o.ty ≠ tEV ∧ o.ty ≠ tCK := ⟨fun h' => (by decide : tEV ∉ msgTys ∧ tCK ∉ msgTys).1 (h' ▸ hot),
        fun h' => (by decide : tEV ∉ msgTys ∧ tCK ∉ msgTys).2 (h' ▸ hot)⟩
      exact keep o ho (8 * j) (by unfold Obj.HasSlot at hj; omega) (Or.inl (hneC o ho hty.2))
    · obtain ⟨y, hy, hyb, hyt⟩ := (hL.objs f hf).2
      have hsz := ck_size hF hLy hy hyt
      have hk' : k < 104 ∧ k ≠ 24 := by
        simp only [ckXSlots, ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark,
          ckOutStart, ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
        omega
      rw [← hyb]
      exact keep y hy k (by omega) (Or.inr hk'.2)
  have hbk : BKeep guestC Γ u t := bkeep_of_keepTys fun o ho hty k hk hpr => by
    have hi : 8 * k < o.size := by unfold Obj.HasSlot at hk; omega
    have := keep o ho (8 * k) hi (Or.inl (hneC o ho (fun h => hF.ckK (h ▸ hty))))
    unfold fld at this
    unfold Obj.cell
    exact this
  refine ⟨p, runT_of_run hrun hbk, ⟨fs, hch', hE'⟩, ?_, rootK_of_same hL.chain hch'.chain⟩
  rw [phi_eq hch'.chain, phi_eq hL.chain]
  refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
  · obtain ⟨o, ho, hob, hot⟩ := ev_obj hL hf
    rw [← hob]
    have hk' : k < 280 := by simp [evGasLeft, evSpilled, evRunning] at hk; omega
    exact keep o ho k (by have := ev_size hF hLy ho hot; omega)
      (Or.inl (hneC o ho (by rw [hot]; exact hF.ne)))
  · obtain ⟨o, ho, hob, hot⟩ := ck_obj hL hf
    rw [← hob]
    exact keep o ho ckDone (by have := ck_size hF hLy ho hot; unfold ckDone; omega)
      (Or.inr (by unfold ckDone; omega))

end InitECandidate.Solver.MemSafe.Entry

#print axioms InitECandidate.Solver.MemSafe.Entry.ck3_write
