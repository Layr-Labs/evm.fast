import InitECandidate.Solver.MemSafe.Frames.FinDefs
import InitECandidate.Solver.MemSafe.Frames.BKeepDef
import InitECandidate.Solver.MemSafe.Frames.Run

/-!
# Block keep: the `prot` cells of the block objects across a run (package K)

`blockTys = [tBOS, tBO, tMCO]` are the types of the block driver's heap objects (the block
output record, its slice arrays, `process_message_call`'s output record). No function the frame
loop reaches writes them, so a run keeps their `prot` cells.

* `KCell C Γ a`: `a` is a `prot` cell of a `blockTys` object of `Γ`;
* `BKeep C Γ s t`: those cells are unchanged from `s` to `t`;
* `bkeep_refl`, `bkeep_trans` (through `Ext`), `bkeep_congr`, `bkeep_of_mem`;
* `bkeep_of_sumCore`: a summary core keeps them when its extra cell set `PW` misses them (the
  argument buffers never hit a `prot` cell);
* `bkeep_of_upd`: a store outside every `blockTys` object.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- Argument buffers avoid the `prot` cells. -/
theorem argCells_not_prot {C : Cfg} {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ)
    {ps : List PT} {vs : List (ValueHOL 64)} (hargs : ArgsOK C Γ p ps vs) {a : BitVec 64}
    (ha : ArgCells ps vs a) : ¬ ProtCell C Γ a := by
  rintro ⟨o, ho, k, hk, hpr, rfl⟩
  obtain ⟨i, w, hw, hb⟩ := ha
  unfold argW at hw
  split at hw
  · rename_i v hv
    have key : ∀ n, BufOK C Γ p w.toNat n → Overlap w.toNat n (o.cell k) → False := by
      intro n hbuf hov
      rcases hbuf _ hov with ⟨o', ho', k', hk', hsc, he⟩ | ⟨hni, -⟩
      · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
        rw [hpr] at hsc; cases hsc
      · exact hni (cell_in hord hL ho hk)
    rcases hb with ⟨n, hn, hov⟩ | ⟨j, c, d, x, hn, hx, hov⟩
    · have hA := hargs.2 i _ v hn hv
      obtain ⟨w', hw', hbuf⟩ := hA
      rw [hw] at hw'; cases hw'
      exact key n hbuf hov
    · have hA := hargs.2 i _ v hn hv
      obtain ⟨w', x', hw', hx', hbuf⟩ := hA
      rw [hw] at hw'; cases hw'
      rw [hx] at hx'; cases hx'
      exact key _ hbuf hov
  · cases hw

/-- **A summary core keeps the block cells** when its extra cell set misses them (argument
cells that are not `prot` cells: `hac`). -/
theorem bkeep_of_sumCore' {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop}
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G C H Γ s) (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γ a)
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') (hPW : ∀ a, PW a → ¬ KCell C Γ a) :
    BKeep C Γ s t := by
  refine bkeep_iff.mpr fun a ha => ?_
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  have hmod := hc.2.2.2.2.2.2.1 a
  have hnr : ¬ (WCell C Γ a ∨ ArgCells sg.params vs a ∨ ¬ q.Allocated a.toNat ∨ PW a) := by
    rintro (⟨o, ho, k, hk, hpr, rfl⟩ | h1 | h2 | h3)
    · obtain ⟨o', ho', k', hk', hp', he⟩ := kCell_prot ha
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
      exact hpr hp'
    · exact hac _ h1 (kCell_prot ha)
    · exact h2 (prot_alloc hord hL (kCell_prot ha))
    · exact hPW _ h3 ha
  unfold rd
  rw [hmod hnr]

/-- **A summary core keeps the block cells** (`BCell`, blocks only) when its extra cell set misses them. -/
theorem bcell_keep_of_sumCore {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop}
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G C H Γ s) (hargs : ArgsOK C Γ p sg.params vs)
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') (hPW : ∀ a, PW a → ¬ BCell C Γ a) :
    ∀ a, BCell C Γ a → rd t.memory a = rd s.memory a := by
  intro a ha
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  have hmod := hc.2.2.2.2.2.2.1 a
  have hnr : ¬ (WCell C Γ a ∨ ArgCells sg.params vs a ∨ ¬ q.Allocated a.toNat ∨ PW a) := by
    rintro (⟨o, ho, k, hk, hpr, rfl⟩ | h1 | h2 | h3)
    · obtain ⟨o', ho', k', hk', hp', he⟩ := bCell_prot ha
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
      exact hpr hp'
    · exact argCells_not_prot hord hL hargs h1 (bCell_prot ha)
    · exact h2 (prot_alloc hord hL (bCell_prot ha))
    · exact hPW _ h3 ha
  unfold rd
  rw [hmod hnr]

/-- With the arguments of the call fitting its signature. -/
theorem bkeep_of_sumCore {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop}
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G C H Γ s) (hargs : ArgsOK C Γ p sg.params vs)
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') (hPW : ∀ a, PW a → ¬ KCell C Γ a) :
    BKeep C Γ s t := by
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hc.1)
  exact bkeep_of_sumCore' hG (fun a ha => argCells_not_prot hord hL hargs ha) hc hPW

/-- A summary core with unconstrained arguments. -/
theorem bkeep_of_sumCore_any {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop}
    {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {p p' : Ptrs} (hG : G C H Γ s) (hps : ∀ pt ∈ sg.params, pt = .any)
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') (hPW : ∀ a, PW a → ¬ KCell C Γ a) :
    BKeep C Γ s t :=
  bkeep_of_sumCore' hG (fun _ ha => absurd ha (argCells_any hps)) hc hPW

/-- `MsgKeep` covers the block types. -/
theorem bkeep_of_msgKeep {C : Cfg} {Γ : Gam} {s t : State σ} (h : MsgKeep C Γ s.memory t.memory) :
    BKeep C Γ s t :=
  ⟨fun o ho hty k hk hp => h o ho (bkTys_msgTys _ hty) k hk hp,
    fun o ho hty k _ hk hp => h o ho (by rw [hty]; decide) k hk hp⟩

/-- A cell outside every message / block object is no block cell. -/
theorem not_kCell_of_noMsg {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {a : BitVec 64} (h : NoMsgCell Γ a) : ¬ KCell C Γ a := by
  rintro (⟨o, ho, hty, k, hk, -, rfl⟩ | ⟨o, ho, hty, k, -, hk, -, rfl⟩)
  · exact h o ho (bkTys_msgTys _ hty)
      (inO_cell hord hL ho (k := 8 * k) (by unfold Obj.HasSlot at hk; omega))
  · exact h o ho (by rw [hty]; decide)
      (inO_cell hord hL ho (k := 8 * k) (by unfold Obj.HasSlot at hk; omega))

/-- A footprint inside `PWtopM` misses the block cells. -/
theorem not_kCell_of_pwtopM {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {tEV tCK : Nat} {ks : List Nat} {vs : List (ValueHOL 64)} {s : State σ}
    {a : BitVec 64} (h : PWtopM tEV tCK ks vs s Γ a) : ¬ KCell C Γ a :=
  not_kCell_of_noMsg hord hL h.2

/-- **Compose `BKeep` across a step from a `G` state**, through `KeepH` (heap objects survive,
and the block types are heap types). -/
theorem bkeep_step {C : Cfg} (hreg : ∀ t ∈ keepTys, (C.ty t).region = .heap)
    {Γ0 Γ : Gam} {s0 s t : State σ} (hp0 : ∃ p, ptrsOf s0 = some p ∧ p.Ordered)
    (hps : ∃ p', ptrsOf s = some p')
    (hk : KeepH C Γ0 Γ s0 s) (hb : BKeep C Γ0 s0 s) (hb' : BKeep C Γ s t) : BKeep C Γ0 s0 t := by
  obtain ⟨p, hp, hord⟩ := hp0
  obtain ⟨p', hp'⟩ := hps
  obtain ⟨-, hsurv, -⟩ := hk p p' hp hp' hord
  refine ⟨fun o ho hty k hk' hpr => ?_, fun o ho hty k hk2' hk' hpr => ?_⟩
  · obtain ⟨x, hx, hxb, hxt, hxs⟩ := hsurv o ho (hreg _ (keep_bk hty))
    have hk2 : x.HasSlot k := by unfold Obj.HasSlot at hk' ⊢; omega
    have hc : x.cell k = o.cell k := by unfold Obj.cell; rw [hxb]
    have := hb'.1 x hx (by rw [hxt]; exact hty) k hk2 (by rw [hxt]; exact hpr)
    rw [hc] at this
    rw [this]
    exact hb.1 o ho hty k hk' hpr
  · obtain ⟨x, hx, hxb, hxt, hxs⟩ := hsurv o ho (by rw [hty]; exact hreg _ keep_msg)
    have hk2 : x.HasSlot k := by unfold Obj.HasSlot at hk' ⊢; omega
    have hc : x.cell k = o.cell k := by unfold Obj.cell; rw [hxb]
    have := hb'.2 x hx (by rw [hxt]; exact hty) k hk2' hk2 (by rw [hxt]; exact hpr)
    rw [hc] at this
    rw [this]
    exact hb.2 o ho hty k hk2' hk' hpr

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.bkeep_of_sumCore'
#print axioms InitECandidate.Solver.MemSafe.Frames.bkeep_trans
#print axioms InitECandidate.Solver.MemSafe.Frames.bkeep_of_upd
