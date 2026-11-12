import InitECandidate.Solver.MemSafe.Frames.RootX
import InitECandidate.Solver.MemSafe.Frames.FHypsB
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `process_message`: the root frame's `run_frames` precondition (frames13, task 3, part 1)

`process_message(msg)` (root, `MSG_DEPTH = 0`) runs
`frame_open(msg, 0); depth0_prepare() [try]; state_snapshot(); st cur_cont + 24, _; frame_start();
run_frames()`. After `frame_open`, the chain is the single frame `(e, q)` (`e = ev`, `q = cur_cont`,
`CK_KIND = 0`).

* **`chainL_root`**: the one-frame `ChainL` from the root frame's facts (`frame_open`'s `FOQ` /
  `ChildFacts`: the EV / CK objects, `CK_KIND = 0`, `MEM + MEM_CAP = fp`, `RETD_CAP = 0`; the
  pairwise fields are vacuous).
* **`phi_root`**: `Φ = GAS_LEFT + SPILLED + 1 + [DONE = 0 ∧ RUNNING ≠ 0] ≤ GAS_LEFT + SPILLED + 2`.
* **`preInvX_root`**: with `chainE_root`'s extension and `JrNZ`, **`PreInvX … GP GR M`** for every
  `M ≥ GAS_LEFT + SPILLED + 2`; in particular `M := msg_gas + 2` right after `frame_open`
  (`SPILLED = 0`), and **`M < 2^64`** iff `msg_gas + 2 < 2^64`.
* **`RfPre M u`** (`run_frames`' `CondCost` precondition at `u`, `sg0 []`), `rfPre_of`,
  **`run_frames_cost_root`**: `run_frames_condCost_FB` applied at such a state.
* **`D0Spec`**: the precise hypothesis shape for `depth0_prepare` (not provable in this lane: it
  calls `set_delegation` / `prepare_dispatch` and stores into `msg + 48`, `EV 192`, `EV 200`).
-/

set_option autoImplicit false
set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Wire

variable {σ : Type}

theorem adj_single {e q : BitVec 64} {ch pa : Frame} (h : Adj [(e, q)] ch pa) : False := by
  obtain ⟨l1, l2, h⟩ := h
  have := congrArg List.length h
  simp only [List.length_cons, List.length_nil, List.length_append] at this
  omega

/-- **The one-frame chain invariant** of the root frame. -/
theorem chainL_root {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {u : State σ} {e q : BitVec 64}
    (he : gword u nmEv = some e) (hq : gword u nmCC = some q) (hk : RootCk u.memory q)
    (hoE : ∃ o ∈ Γ, o.base = e ∧ o.ty = tEV) (hoC : ∃ o ∈ Γ, o.base = q ∧ o.ty = tCK)
    (htop : ∀ p, ptrsOf u = some p →
      (fld u.memory e evMem).toNat + (fld u.memory e evMemCap).toNat = p.fp)
    (hret : fld u.memory e evRetdCap = 0) :
    ChainL C tEV tCK Γ u [(e, q)] where
  chain := ⟨e, q, [], rfl, he, hq, .base hk⟩
  objs := fun f hf => by
    simp only [List.mem_singleton] at hf
    subst hf
    exact ⟨hoE, hoC⟩
  nodupE := by simp
  nodupC := by simp
  stack := fun _ _ h => (adj_single h).elim
  memMark := fun _ _ h => (adj_single h).elim
  outRange := fun _ _ h => (adj_single h).elim
  topMem := fun e' c' rest h p hp => by
    simp only [List.cons.injEq, Prod.mk.injEq] at h
    obtain ⟨⟨rfl, rfl⟩, rfl⟩ := h
    exact htop p hp
  marks := fun l1 ch pa l2 h => (adj_single ⟨l1, l2, h⟩).elim
  retd := fun f hf => by
    simp only [List.mem_singleton] at hf
    subst hf
    exact Or.inl hret

/-- **`Φ` of the root frame.** -/
theorem phi_root {u : State σ} {e q : BitVec 64} (hch : ChainOf u [(e, q)]) :
    Phi u ≤ (fld u.memory e evGasLeft).toNat + (fld u.memory e evSpilled).toNat + 2 := by
  rw [phi_eq hch, wsum_cons]
  simp only [wsum, List.map_nil, List.sum_nil, Nat.add_zero, wt]
  split <;> omega

/-- **`run_frames`' precondition for the root frame**, for every `M` above its weight. -/
theorem preInvX_root {Γ : Gam} {u : State σ} {e q : BitVec 64}
    (hL : ChainL guestC tEV tCK Γ u [(e, q)]) (hE : ChainE GP GR Γ u [(e, q)]) (hJ : JrNZ u)
    {M : Nat}
    (hM : (fld u.memory e evGasLeft).toNat + (fld u.memory e evSpilled).toNat + 2 ≤ M) :
    PreInvX guestC tEV tCK GP GR M [] u Γ :=
  ⟨⟨⟨[(e, q)], hL, hE⟩, Nat.le_trans (phi_root hL.chain) hM⟩, hJ⟩

/-- **`run_frames`' `CondCost` precondition at `u`** (`sg0 []`, no arguments). -/
def RfPre (M : Nat) (u : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ ptrsOf u = some p ∧
    PreInvX guestC tEV tCK GP GR M [] u Γ

theorem rfPre_of {M : Nat} {u : State σ} (h : RfPre M u) :
    ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ ptrsOf u = some p ∧
      ArgsOK guestC Γ p (sg0 []).params [] ∧ PreInvX guestC tEV tCK GP GR M [] u Γ := by
  obtain ⟨Γ, p, hG, hp, hpre⟩ := h
  exact ⟨Γ, p, hG, hp, argsOK_any (by simp [sg0]) rfl, hpre⟩

/-- **`run_frames`' cost at a root-frame state**, open only in `FHypsB` and `op_dispatch`'s cost:
`run_frames_condCost_FB` with `M := GAS_LEFT + SPILLED + 2` of the root frame. -/
theorem run_frames_cost_root (hF : FHypsB σ) {Bop : Nat} {Γ : Gam} {u : State σ} {p : Ptrs}
    {e q : BitVec 64} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some p)
    (hL : ChainL guestC tEV tCK Γ u [(e, q)]) (hE : ChainE GP GR Γ u [(e, q)]) (hJ : JrNZ u)
    (hM : (fld u.memory e evGasLeft).toNat + (fld u.memory e evSpilled).toNat + 2 < 2 ^ 64)
    (opCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR
        ((fld u.memory e evGasLeft).toNat + (fld u.memory e evSpilled).toNat + 2)) Bop) :
    CondCost σ guestCtx guestC Hooks.guestHooksR (nm "run_frames") (sg0 [])
        (PreInvX guestC tEV tCK GP GR
          ((fld u.memory e evGasLeft).toNat + (fld u.memory e evSpilled).toNat + 2))
        (rfB ((fld u.memory e evGasLeft).toNat + (fld u.memory e evSpilled).toNat + 2) Bop 2
          (max (1 + srBGuest + 0) 0 + 0) (finBnd Wire.finBsGuest)) ∧
      RfPre ((fld u.memory e evGasLeft).toNat + (fld u.memory e evSpilled).toNat + 2) u :=
  ⟨run_frames_condCost_FB hF hM opCost, Γ, p, hG, hp, preInvX_root hL hE hJ (Nat.le_refl _)⟩

/-- **The root frame right after `frame_open(msg, 0)`**: from `frame_open`'s post (`FOQ` with
`kind = 0`: `ev = child`, `cur_cont = rec`, the CK object, `CK_KIND = 0`, `ChildFacts`), a run
keeping the non-state `prot` cells (as `chainE_root` needs), `RootMsgX` at the entry and `JrNZ`,
`run_frames`' precondition `PreInvX … M` holds for every `M ≥ msg_gas + 2` (`msg_gas` the
message's gas word `msg + 40` at the entry). -/
theorem preInvX_open {H : Hooks σ} {gw : List MlS} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs}
    {msg child rec : BitVec 64} (hG : G guestC H Γ s) (hrun : RunT guestC H gw Γ s Γ' t p p')
    (hk : ProtKeep guestC (nst guestSt Γ) s t) (hx : RootMsgX Γ s msg)
    (hev : gword t nmEv = some child) (hcc : gword t nmCC = some rec)
    (hrec : (⟨rec, tCK, 104⟩ : Obj) ∈ Γ') (hkind : RootCk t.memory rec)
    (hcf : ChildFacts tEV msg s t Γ' child) (hJ : JrNZ t) {M : Nat}
    (hM : (fld s.memory msg 40).toNat + 2 ≤ M) :
    PreInvX guestC tEV tCK GP GR M [] t Γ' := by
  obtain ⟨⟨o, ho, hob, hot, -⟩, hgas, hsp, -, -, -, -, h40, hfp, h216, -, hnx⟩ := hcf
  have hps : ptrsOf s = some p := hrun.1
  have hpt : ptrsOf t = some p' := hrun.2.1
  have hL : ChainL guestC tEV tCK Γ' t [(child, rec)] := by
    refine chainL_root hev hcc hkind ⟨o, ho, hob, hot⟩ ⟨_, hrec, rfl, rfl⟩ (fun p'' hp'' => ?_) h216
    rw [ptrs_some hpt hp'']
    obtain ⟨h24, hfp'⟩ := hfp p p' hps hpt
    show (fld t.memory child 24).toNat + (fld t.memory child 40).toNat = p'.fp
    rw [h24, h40, hfp']
    rfl
  have hE := chainE_root (q := rec) hG hrun hk hx (hnx p hps)
  refine preInvX_root hL hE hJ ?_
  show (fld t.memory child 64).toNat + (fld t.memory child 192).toNat + 2 ≤ M
  rw [hgas, hsp]
  exact hM

/-- **`depth0_prepare`'s hypothesis** (precise shape; the root frame, `MSG_DEPTH = 0`): from `G`
and `PreInvX … M` (the one-frame chain), every good non-abortive result keeps `G`, and on a return
or an `EvmErr` the extended chain with `Φ` not raised and `JrNZ` (so `PreInvX … M` again on a
return). It is the `QProX` shape of `frame_prologue` plus `JrNZ`. -/
def D0Spec (σ : Type) : Prop :=
  ∀ M : Nat, JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "depth0_prepare")
    (fun vs s Γ => vs = [] ∧ PreInvX guestC tEV tCK GP GR M vs s Γ)
    (fun vs s Γ r t Γ' => QProX guestC tEV tCK GP GR vs s Γ r t Γ' ∧
      (∀ v, r = .returned v → JrNZ t) ∧ (∀ v, r = .exception nmEvmErr v → JrNZ t))

/-- `D0Spec` at a return: `PreInvX … M` again. -/
theorem d0_ret {M : Nat} {vs : List (ValueHOL 64)} {s t : State σ} {Γ Γ' : Gam} {v : ValueHOL 64}
    (hpre : PreInvX guestC tEV tCK GP GR M vs s Γ)
    (hq : QProX guestC tEV tCK GP GR vs s Γ (.returned v) t Γ' ∧
      (∀ v', PanSemResultExact.returned v = .returned v' → JrNZ t) ∧
      (∀ v', PanSemResultExact.returned v = .exception nmEvmErr v' → JrNZ t)) :
    PreInvX guestC tEV tCK GP GR M [] t Γ' := by
  obtain ⟨hx, hΦ, -⟩ := hq.1.1 v rfl
  exact ⟨⟨hx, Nat.le_trans hΦ hpre.1.2⟩, hq.2.1 v rfl⟩

/-- `frame_start`'s `QLeX` at a return, with `JrNZ`: `PreInvX … M` again. -/
theorem fst_ret {M : Nat} {vs : List (ValueHOL 64)} {s t : State σ} {Γ Γ' : Gam} {v : ValueHOL 64}
    (hpre : PreInvX guestC tEV tCK GP GR M vs s Γ)
    (hq : QLeX guestC tEV tCK GP GR vs s Γ (.returned v) t Γ') (hJ : JrNZ t) :
    PreInvX guestC tEV tCK GP GR M [] t Γ' := by
  obtain ⟨hx, hΦ, -⟩ := hq v rfl
  exact ⟨⟨hx, Nat.le_trans hΦ hpre.1.2⟩, hJ⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.chainL_root
#print axioms InitECandidate.Solver.MemSafe.Frames.phi_root
#print axioms InitECandidate.Solver.MemSafe.Frames.preInvX_root
#print axioms InitECandidate.Solver.MemSafe.Frames.rfPre_of
#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_cost_root
#print axioms InitECandidate.Solver.MemSafe.Frames.preInvX_open
#print axioms InitECandidate.Solver.MemSafe.Frames.d0_ret
#print axioms InitECandidate.Solver.MemSafe.Frames.fst_ret
