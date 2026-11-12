import InitECandidate.Solver.MemSafe.Frames.GcDepth

/-!
# `generic_call`: `start_child`'s precondition after `child_message`

**`gc_preSC`**: after the marks `SP = sp₁`, `FP = fp₁` and `child_message` (message
`⟨M, tMSGs, 176⟩` below `sp₁`, only its block and `scratch_ptr` changed), `PreSCT` holds for
`start_child(M, 1, SP, FP, nac, os, osz, 0)` (kind 1): the chain, the parent's stack room and
output range, the Φ budget (`MSG_GAS = gas`), `frame_new`'s precondition (`MSG_CODE_N = cn`),
the `prot` `MSG_GAS` cell, the fresh release invariant (`markOK_fresh`, with the EV stack /
memory objects from the EV hook), the existing records above the marks, the parent's marks above
the child's.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1600000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- `Φ` depends only on the memory and the globals. -/
theorem phi_congrMG {s s' : State σ} (hm : s'.memory = s.memory) (hg : s'.globals = s.globals) :
    Phi s' = Phi s := by
  by_cases h : ∃ fs, ChainOf s fs
  · obtain ⟨fs, hfs⟩ := h
    rw [phi_eq hfs, phi_eq (chainOf_congr hm hg hfs), hm]
  · have h' : ¬ ∃ fs, ChainOf s' fs := fun ⟨fs, hfs⟩ =>
      h ⟨fs, chainOf_congr hm.symm hg.symm hfs⟩
    unfold Phi
    rw [dif_neg h, dif_neg h']

/-- A cell of a live scratch object at or above `sp₁` is outside a block below `sp₁`. -/
theorem out_blk {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {o : Obj}
    (ho : o ∈ Γ) (hr : (C.ty o.ty).region = .scratch) {M : BitVec 64} (hM : M.toNat + 176 ≤ p.sp)
    {k : Nat} (hk : k < o.size) :
    ¬ (M.toNat ≤ (o.base + BitVec.ofNat 64 k).toNat ∧
      (o.base + BitVec.ofNat 64 k).toNat < M.toNat + 176) := by
  rw [cell_addr hord hL ho hk]
  have := ((live_of hL ho).2.2 hr).1
  unfold Obj.lo at *
  omega

/-- **`start_child`'s precondition for the fresh kind-1 child.** -/
theorem gc_preSC {H : Hooks σ} (hK : Shards.GuestHooks H) (hFr : FrameCfg guestC H tEV tCK)
    {Γ1 : Gam} {u st s' : State σ} {p1 p2 : Ptrs} {fs : List Frame} {e0 c0 : BitVec 64}
    {rest : List Frame} (hfs : fs = (e0, c0) :: rest) (hG1 : G guestC H Γ1 u)
    (hp1 : ptrsOf u = some p1) (hch : ChainL guestC tEV tCK Γ1 u fs) {M : BitVec 64}
    (hG2 : G guestC H (Γ1 ++ [⟨M, tMSGs, 176⟩]) st) (hp2 : ptrsOf st = some p2)
    (hsp2 : p2.sp ≤ M.toNat) (hm2 : M.toNat + 176 ≤ p1.sp)
    (hmod : ModifiesOnly (fun a => M.toNat ≤ a.toNat ∧ a.toNat < M.toNat + 176) u.memory st.memory)
    (hglob : ∀ g, g ≠ gScratch → st.globals.lookup g = u.globals.lookup g)
    (hch2 : ChainL guestC tEV tCK (Γ1 ++ [⟨M, tMSGs, 176⟩]) st fs) {gas cn os osz nac : BitVec 64}
    {Mx : Nat} (h40 : fld st.memory M 40 = gas) (h120 : fld st.memory M 120 = cn)
    (hcn : cn.toNat + 63 < 2 ^ 64)
    (hspc : (fld st.memory e0 evSp).toNat < (fld st.memory e0 evStackCap).toNat)
    (hout : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld st.memory e0 evMemLen).toNat)
    (hΦM : Phi u + gas.toNat + 2 ≤ Mx) (hJ : JrNZ u) {SP FP : BitVec 64} (hSP : SP.toNat = p1.sp)
    (hFP : FP.toNat = p1.fp) (hm' : s'.memory = st.memory) (hg' : s'.globals = st.globals) :
    PreSCT guestC guestSt tEV tCK Mx NewPreG (scArgs M 1 SP FP nac os osz 0) s'
      (Γ1 ++ [⟨M, tMSGs, 176⟩]) := by
  obtain ⟨q1, hq1, hord1, hL1, -, -, -, hW1⟩ := id hG1
  rw [hp1, Option.some.injEq] at hq1
  subst hq1
  have hp2' : ptrsOf s' = some p2 := (ptrsOf_congr hg').trans hp2
  have hfp2 : p2.fp = p1.fp := fpQ_of_fp (s := u) (t := st) (hglob _ (by decide)) p1 p2 hp1 hp2
  have hΦst : Phi st = Phi u := by
    rw [phi_eq hch2.chain, phi_eq hch.chain]
    refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · obtain ⟨o, ho, hob, hot⟩ := (hch.objs f hf).1
      have hsz := ev_size hFr hL1 ho hot
      have hr : (guestC.ty o.ty).region = .scratch := by rw [hot]; decide
      rw [← hob]
      simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl <;> exact fld_mod hmod (out_blk hord1 hL1 ho hr hm2 (by omega))
    · obtain ⟨o, ho, hob, hot⟩ := (hch.objs f hf).2
      have hsz := ck_size hFr hL1 ho hot
      have hr : (guestC.ty o.ty).region = .scratch := by rw [hot]; decide
      rw [← hob]
      exact fld_mod hmod (out_blk hord1 hL1 ho hr hm2 (by show 32 < o.size; omega))
  have hmem : (⟨M, tMSGs, 176⟩ : Obj) ∈ Γ1 ++ [⟨M, tMSGs, 176⟩] := by simp
  refine ⟨M, 1, SP, FP, nac, os, osz, 0, rfl, Or.inl rfl, fs, e0, c0, rest,
    chainL_congr hm' hg' hch2, hfs, by rw [hm']; exact hspc, ?_, by rw [hm']; exact hout, ?_,
    ⟨M, rfl, ⟨⟨M, tMSGs, 176⟩, hmem, rfl, Or.inr rfl, le_refl _⟩, by rw [hm', h120]; exact hcn⟩,
    ⟨⟨M, tMSGs, 176⟩, mem_nst.mpr ⟨hmem, by show guestSt tMSGs = false; decide⟩, 5,
      by show 8 * 5 + 8 ≤ 176; omega, by show (guestC.ty tMSGs).slot 5 = .prot; decide, rfl⟩, ?_, ?_, ?_, jrNZ_congr hg' (jrNZ_of_lookup (fun g hg => by
        rcases jrGs_cases hg with rfl | rfl <;> exact hglob _ (by decide)) hJ),
    fun h => absurd h (by decide)⟩
  · rw [hFP, ← hfp2, ← (chainL_congr hm' hg' hch2).topMem e0 c0 rest hfs p2 hp2']
  · rw [phi_congrMG hm' hg', hΦst, hm', h40]; exact hΦM
  · -- the fresh release invariant
    rw [hSP, hFP]
    refine markOK_congr hm' (ptrsOf_congr hg') ?_
    refine markOK_fresh hp1 hord1 hL1 hp2 (by omega) hsp2 hm2 hfp2 (by decide) (by decide)
      (by decide) (by decide) (fun e he het => ?_) (fun e he het => ?_)
    · have hsz := ev_size hFr hL1 he het
      have hr : (guestC.ty e.ty).region = .scratch := by rw [het]; decide
      exact ⟨fld_mod hmod (out_blk hord1 hL1 he hr hm2 (by omega)),
        fld_mod hmod (out_blk hord1 hL1 he hr hm2 (by omega))⟩
    · obtain ⟨⟨-, -, -, o, ho, hob, -⟩, ⟨-, -, -, o', ho', hob', -⟩⟩ :=
        hK.ev.get Γ1 u e he het (hW1 e he)
      exact ⟨⟨o, ho, hob⟩, ⟨o', ho', hob'⟩⟩
  · rw [hSP, hFP]
    intro f _
    exact frameAbove_fresh hL1 (by decide) (by decide) f
  · intro hne
    obtain ⟨r0, r1, rfl⟩ : ∃ r0 r1, rest = r0 :: r1 := by
      cases rest with
      | nil => exact absurd rfl hne
      | cons r0 r1 => exact ⟨r0, r1, rfl⟩
    obtain ⟨hmk, -, -, -, hmm⟩ := hch.marks [] (e0, c0) r0 r1 (by rw [hfs]; rfl)
    have h1 := (hmk.ptrs p1 hp1).1
    have h2 := hmm p1 hp1
    obtain ⟨oc, hoc, hocb, hoct⟩ := (hch.objs (e0, c0) (by rw [hfs]; simp)).2
    have hsz := ck_size hFr hL1 hoc hoct
    have hr : (guestC.ty oc.ty).region = .scratch := by rw [hoct]; decide
    have k48 : fld s'.memory c0 48 = fld u.memory c0 48 := by
      rw [hm', ← show oc.base = c0 from hocb]
      exact fld_mod hmod (out_blk hord1 hL1 hoc hr hm2 (by omega))
    have k56 : fld s'.memory c0 56 = fld u.memory c0 56 := by
      rw [hm', ← show oc.base = c0 from hocb]
      exact fld_mod hmod (out_blk hord1 hL1 hoc hr hm2 (by omega))
    unfold mkOf mmOf at *
    simp only [ckMark, ckMemMark] at *
    rw [k48, k56, hSP, hFP]
    exact ⟨h1, h2⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gc_preSC
