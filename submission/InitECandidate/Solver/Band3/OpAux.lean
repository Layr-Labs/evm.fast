import InitECandidate.Solver.Band3.GetStorage
import InitECandidate.Solver.MemSafe.Frames.SCRunT
import InitECandidate.Solver.MemSafe.Frames.FinDefs

/-!
# Band3: the opcode-handler thread invariant `OpA` (sonnet-store)

`OpA s Γ p` is what `op_sload` / `op_sstore` need along their prefix, beyond `G`:
* `JrNZ s` (for `sk_make`'s `ReqOK`);
* the running EV record `e` (`gword s ev = e.base`), for the `ev` capabilities of
  `stack_pop` / `charge_gas`;
* the running frame's message record `M` (`rd (e.cell 14) = M.base`) and the `BufOK 20` fact for
  the pointer in its `CURRENT_TARGET` slot (`M.cell 4`), which `get_storage*`'s `buf 20` needs.

`opA_init` reads it off `PreOpX` (`ChainX` head frame, `GP`); `opA_step` carries it across a
summary step whose capabilities do not cover EV slot 14 or MSG slot 4 (both `prot` slots) and whose
write list avoids `ev` / `journal` / `sk_buf` (`notCapPW`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def OpA (s : State σ) (Γ : Gam) (p : Ptrs) : Prop :=
  Frames.JrNZ s ∧ ∃ e M : Obj, e ∈ Γ ∧ e.ty = tEV ∧ gword s Frames.nmEv = some e.base ∧
    M ∈ Γ ∧ (M.ty = tMSGh ∨ M.ty = tMSGs) ∧ 176 ≤ M.size ∧ rd s.memory (e.cell 14) = M.base ∧
    BufOK guestC Γ p (rd s.memory (M.cell 4)).toNat 20

theorem opA_congr {s u : State σ} {Γ : Gam} {p : Ptrs} (hm : u.memory = s.memory)
    (hg : u.globals = s.globals) (h : OpA s Γ p) : OpA u Γ p := by
  obtain ⟨hJ, e, M, h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  exact ⟨Frames.jrNZ_congr hg hJ, e, M, h1, h2, by rw [Frames.gword_congr hg]; exact h3,
    h4, h5, h6, by rw [hm]; exact h7, by rw [hm]; exact h8⟩

/-- `OpA` from `PreOpX`. -/
theorem opA_init {M : Nat} {vs : List (ValueHOL 64)} {s : State σ} {Γ : Gam} {p : Ptrs}
    (hp : ptrsOf s = some p) (h : Frames.PreOpX guestC tEV tCK Frames.GP Frames.GR M vs s Γ) :
    OpA s Γ p := by
  obtain ⟨⟨⟨fs, hL, hE⟩, -, -⟩, hJ⟩ := h
  obtain ⟨e, c, rest, rfl, hev, -, -⟩ := hL.chain
  have hmem : (e, c) ∈ (e, c) :: rest := List.mem_cons_self ..
  obtain ⟨o, ho, hob, hot⟩ := (hL.objs _ hmem).1
  obtain ⟨⟨M, hM, hMb, hMt, hMs⟩, hbuf, -⟩ := hE.1 p hp _ hmem
  refine ⟨hJ, o, M, ho, hot, by rw [hob]; exact hev, hM, hMt, hMs, ?_, ?_⟩
  · have : rd s.memory (o.cell 14) = Frames.msgOf s.memory (e, c) := by
      unfold Obj.cell Frames.msgOf Frames.fld; rw [hob]
    rw [this]; exact hMb.symm
  · have := hbuf 32 (by simp [Frames.msgXOffs])
    have hc : M.cell 4 = Frames.msgOf s.memory (e, c) + BitVec.ofNat 64 32 := by
      unfold Obj.cell; rw [hMb]
    rw [hc]; exact this

/-- A cell of a typed object is not written by capabilities that avoid its type and slot. -/
theorem notCapPW {C : Cfg} {s : State σ} {Γ : Gam} {p : Ptrs} (hord : p.Ordered)
    (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) {j : Nat} (hj : o.HasSlot j) {cs : List Cap}
    (hcs : ∀ c ∈ cs, (c.t = o.ty → j ∉ c.ks) ∧ (c.all = true → c.t ≠ o.ty ∧ o.ty < ownBase) ∧
      (∀ k ∈ c.ks, 8 * k + 8 ≤ (C.ty c.t).minSz)) :
    ¬ CapPW cs s Γ (o.cell j) := by
  rintro ⟨c, hc, ⟨e', ⟨he', het, -⟩, k, hk, hcell⟩ | ⟨hall, e', he', hty, k, hk, hcell⟩⟩
  · obtain ⟨-, -, hsz⟩ := hcs c hc
    have hsz' := (Frames.lay_obj hL he').2.2.2.1
    have hks := hsz k hk
    rw [het] at hsz'
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho he' hj (by unfold Obj.HasSlot; omega) hcell
    exact (hcs c hc).1 het.symm hk
  · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho he' hj hk hcell
    obtain ⟨-, h2, -⟩ := hcs c hc
    obtain ⟨hne, hlt⟩ := h2 hall
    rcases hty with h | h
    · exact hne h.symm
    · omega

/-- `OpA` across a summary step. -/
theorem opA_step {H : Hooks σ} {sg : Sig} {cs : List Cap} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hG : G guestC H Γ s) (hA : OpA s Γ p) (hargs : ArgsOK guestC Γ p sg.params vs)
    (hcsE : ∀ c ∈ cs, (c.t = tEV → 14 ∉ c.ks) ∧ (c.all = true → c.t ≠ tEV ∧ tEV < ownBase) ∧
      (∀ k ∈ c.ks, 8 * k + 8 ≤ (guestC.ty c.t).minSz))
    (hcsM : ∀ c ∈ cs, (c.t = tMSGh → 4 ∉ c.ks) ∧ (c.t = tMSGs → 4 ∉ c.ks) ∧
      (c.all = true → c.t ≠ tMSGh ∧ c.t ≠ tMSGs ∧ tMSGs < ownBase) ∧
      (∀ k ∈ c.ks, 8 * k + 8 ≤ (guestC.ty c.t).minSz))
    (hgw : Frames.nmEv ∉ sg.gw ∧ Frames.JrOut sg.gw)
    (hcore : SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) Γ s vs r t Γ' p p') :
    OpA t Γ' p' := by
  obtain ⟨hJ, e, M, he, het, hev, hM, hMt, hMs, hrd1, hbuf⟩ := hA
  have hstp := stp_of_core hG hcore
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hcore.1)
  have hprot := Frames.sumCore_protW hcore hG
    (fun a ha => Frames.argCells_not_prot hord hL hargs ha) (fun a _ h => h.2)
  have hesz : 280 ≤ e.size := by
    have := (Frames.lay_obj hL he).2.2.2.1; rw [het] at this; exact this
  have hpe : ProtCell guestC Γ (e.cell 14) :=
    ⟨e, he, 14, by unfold Obj.HasSlot; omega, by rw [het]; decide, rfl⟩
  have hpm : ProtCell guestC Γ (M.cell 4) :=
    ⟨M, hM, 4, by unfold Obj.HasSlot; omega, by rcases hMt with h | h <;> rw [h] <;> decide, rfl⟩
  have c1 : t.memory (e.cell 14) = s.memory (e.cell 14) :=
    hprot _ hpe (notCapPW hord hL he (by unfold Obj.HasSlot; omega) (fun c hc => by
      have := hcsE c hc; rw [het]; exact this))
  have c2 : t.memory (M.cell 4) = s.memory (M.cell 4) :=
    hprot _ hpm (notCapPW hord hL hM (by unfold Obj.HasSlot; omega) (fun c hc => by
      obtain ⟨a1, a2, a3, a4⟩ := hcsM c hc
      refine ⟨?_, ?_, a4⟩
      · rcases hMt with h | h <;> rw [h]
        · exact a1
        · intro h'; exact a2 h'
      · intro hall
        obtain ⟨b1, b2, b3⟩ := a3 hall
        rcases hMt with h | h <;> rw [h]
        · exact ⟨b1, by unfold ownBase; decide⟩
        · exact ⟨b2, by unfold ownBase; decide⟩))
  obtain ⟨e', he', hb, ht, -⟩ := hstp.2.2.2.1 e he
  obtain ⟨M', hM', hMb, hMty, hMsz⟩ := hstp.2.2.2.1 M hM
  have hge : t.globals.lookup Frames.nmEv = s.globals.lookup Frames.nmEv :=
    hcore.2.2.2.2.2.2.2.1 _ (by decide) hgw.1
  have hcel1 : e'.cell 14 = e.cell 14 := by unfold Obj.cell; rw [hb]
  have hcel2 : M'.cell 4 = M.cell 4 := by unfold Obj.cell; rw [hMb]
  refine ⟨Frames.jrNZ_of_lookup (fun g hg => hcore.2.2.2.2.2.2.2.1 g (jrPG_guest g hg) (hgw.2 g hg)) hJ, e', M', he', ht.trans het,
    by unfold gword at hev ⊢; rw [hge, hev, hb], hM', by rw [hMty]; exact hMt,
    by omega, ?_, ?_⟩
  · unfold rd at c1 ⊢
    rw [hcel1, c1]; unfold rd at hrd1; rw [hrd1, hMb]
  · rw [hcel2]
    have : rd t.memory (M.cell 4) = rd s.memory (M.cell 4) := by unfold rd; rw [c2]
    rw [this]
    exact Frames.bufOK_stepX hstp.1 hstp.2.1 hstp.2.2.1 hstp.2.2.2.1 hstp.2.2.2.2 hbuf

end InitECandidate.Solver.Band3

#print axioms InitECandidate.Solver.Band3.opA_init
#print axioms InitECandidate.Solver.Band3.notCapPW
#print axioms InitECandidate.Solver.Band3.opA_step
