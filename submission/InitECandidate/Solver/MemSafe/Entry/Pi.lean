import InitECandidate.Solver.MemSafe.Entry.CkWrite
import InitECandidate.Solver.MemSafe.Frames.GcLib

/-!
# Entry: the thread invariant `PI M` of `process_message`

`PI M s`: `G` at some `Γ`, the allocator pointers, and `PreInvX … GP GR M [] s Γ` (the root frame's
`run_frames` precondition). It ignores the locals.

* `pi_loc`: locals-free.
* `pi_core`: a footprint-free summary core with no `prot` writes, no arguments, no global writes
  and `frame_mem_ptr` kept (`state_snapshot`) keeps `PI M`.
* `pi_ck3`: the `CK_SNAPSHOT` store keeps `PI M`.
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

/-- The thread invariant. -/
def PI (M : Nat) (s : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧
    PreInvX guestC tEV tCK GP GR M [] s Γ

theorem preInvX_loc {M : Nat} {s : State σ} {Γ : Gam} (h : PreInvX guestC tEV tCK GP GR M [] s Γ)
    (l : Locs) (c : Nat) : PreInvX guestC tEV tCK GP GR M [] { s with locals := l, clock := c } Γ := by
  obtain ⟨⟨hx, hΦ⟩, hJ⟩ := h
  exact ⟨⟨(chainX_locFree s l c).mpr hx, by have := phi_locFree (σ := σ) s l c; omega⟩,
    (jrNZ_locFree s l c).mpr hJ⟩

theorem pi_loc {M : Nat} {s : State σ} (h : PI M s) (l : Locs) (c : Nat) :
    PI M { s with locals := l, clock := c } := by
  obtain ⟨Γ, p, hG, hp, hpre⟩ := h
  exact ⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful s l c).mpr hG, (ptrsOf_congr rfl).trans hp,
    preInvX_loc hpre l c⟩

theorem pi_entry {M : Nat} {s : State σ} (h : PI M s) (callee : Locs) :
    PI M (callEntryStateHOLFinite s callee) := pi_loc h callee _

theorem pi_set {M : Nat} {s : State σ} (h : PI M s) (n : MlS) (v : ValueHOL 64) :
    PI M (setVarHOLFinite n v s) := pi_loc h _ s.clock

/-- **A plain callee keeps `PI M`**: a summary core with no `prot` writes (`PW = False`), no
arguments, no written globals, and `frame_mem_ptr` kept. -/
theorem pi_core_rootX {M : Nat} {sg : Sig} (hps : sg.params = []) (hgw : sg.gw = [])
    {u st : State σ} {Γ Γ' : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u)
    (hpre : PreInvX guestC tEV tCK GP GR M [] u Γ)
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg (fun a => ProtCell guestC Γ a ∧ False)
      Γ u vs r st Γ' p p')
    (hfp : p'.fp = p.fp) : PreInvX guestC tEV tCK GP GR M [] st Γ' ∧ RootK u st := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨⟨fs, hch, hE⟩, hΦ⟩, hJ⟩ := hpre
  obtain ⟨e, c, rest, hfs, he, hcc, -⟩ := hch.chain
  subst hfs
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a := fun a ha =>
    absurd ha (argCells_any (by rw [hps]; intro pt h; cases h))
  have hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw := by rw [hgw]; simp
  have hcT : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun a => ProtCell guestC Γ a ∧ PWtop tEV tCK [] vs u Γ a) Γ u vs r st Γ' p p' :=
    sumCore_pwM hc fun a h => ⟨h.1, h.2.elim⟩
  obtain ⟨hch2, hΦ2, -, -⟩ := pa_coreX hF hG hch (ks := []) (by simp) (by simp) hgwE hcT hac hfp
    (Or.inl ⟨by simp, by simp⟩) (Or.inl ⟨by simp, by simp⟩)
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreM hF xCfg_guest (by decide) (ks := []) (by simp) (by simp) hG hc hac
    (fun a _ hw => hw.elim) he ⟨oe, hoe, hoeb, hoet⟩ hch.objs hE
  have hJ2 : JrNZ st := jrNZ_sumCore (by decide) (by rw [hgw]; decide) hc hJ
  exact ⟨⟨⟨⟨_, hch2, hE2⟩, by omega⟩, hJ2⟩, rootK_of_same hch.chain hch2.chain⟩

theorem pi_core_root {M : Nat} {sg : Sig} (hps : sg.params = []) (hgw : sg.gw = [])
    {u st : State σ} {Γ Γ' : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u)
    (hpre : PreInvX guestC tEV tCK GP GR M [] u Γ)
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg (fun a => ProtCell guestC Γ a ∧ False)
      Γ u vs r st Γ' p p')
    (hfp : p'.fp = p.fp) : PI M st ∧ RootK u st :=
  have h := pi_core_rootX hps hgw hG hpre hc hfp
  ⟨⟨Γ', p', hc.2.2.2.2.2.1, hc.2.1, h.1⟩, h.2⟩

theorem pi_core {M : Nat} {sg : Sig} (hps : sg.params = []) (hgw : sg.gw = [])
    {u st : State σ} {Γ Γ' : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u)
    (hpre : PreInvX guestC tEV tCK GP GR M [] u Γ)
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg (fun a => ProtCell guestC Γ a ∧ False)
      Γ u vs r st Γ' p p')
    (hfp : p'.fp = p.fp) : PI M st :=
  (pi_core_root hps hgw hG hpre hc hfp).1

/-- **The `CK_SNAPSHOT` store `st cur_cont + 24, w`** keeps `PI M`. -/
theorem pi_ck3 {M : Nat} {u t : State σ} {c w : BitVec 64} (hP : PI M u)
    (hc : gword u nmCC = some c) (hm : t.memory = upd u.memory (c + BitVec.ofNat 64 24) w)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : PI M t := by
  obtain ⟨Γ, p, hG, hp, ⟨hx, hΦ⟩, hJ⟩ := hP
  obtain ⟨p1, hrun, hx2, hΦ2, -⟩ := ck3_write (gw := []) (Hooks.frameCfg_guestHooksR (σ := σ)) hG hx hc
    hm hg hd hbe
  exact ⟨Γ, p1, hrun.2.2.2.2.2.1, hrun.2.1, ⟨⟨hx2, by omega⟩, jrNZ_congr hg hJ⟩⟩

end InitECandidate.Solver.MemSafe.Entry

#print axioms InitECandidate.Solver.MemSafe.Entry.pi_loc
#print axioms InitECandidate.Solver.MemSafe.Entry.pi_core_rootX
#print axioms InitECandidate.Solver.MemSafe.Entry.pi_core_root
#print axioms InitECandidate.Solver.MemSafe.Entry.pi_core
#print axioms InitECandidate.Solver.MemSafe.Entry.pi_ck3
