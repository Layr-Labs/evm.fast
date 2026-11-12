import InitECandidate.Solver.MemSafe.Frames.ChainXG
import InitECandidate.Solver.MemSafe.Frames.Bundle
import InitECandidate.Solver.MemSafe.Wire.Guest

/-!
# `op_dispatch`: the conditional cost (`opCost`, band1)

`op_dispatch(op)` is a tree of `if`s on the local `op` whose leaves are `op_X(args); return 0`,
`throw EvmErr 5` or `skip` (the shape `Frames.dchk` accepts; `dchkB` is the same check, restated
here so that this file does not depend on the gas checker).

* **`dcost`** (generic): an accepted tree whose handlers all have a conditional cost
  `CalleeCostP f Pf B`, run from states where `P` gives `Pf` at every call entry, costs at most
  `dN p * (1 + B)` (`dN`: the number of `call; return` leaves). The tree changes no state before
  a call (`dchk_none`), so `P` holds at every leaf.
* **`op_dispatch_condCost`**: `op_dispatch`'s `CondCost` under `PreOpX … M` (the `opCost`
  argument of `Frames.run_frames_condCost_F(B)`), from the `CondCost`s of `op_sload` and
  `op_sstore` under the same `PreOpX … M` (the two handlers that reach the decode root through
  `get_storage`). The other 85 handlers are read off the cost table (`odTab_le`, every entry
  `≤ 2^392`).
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option exponentiation.threshold 400

namespace InitECandidate.Solver.Band
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames (PreOpX GP GR Ready DoneZ RunNZ Phi chainX_congr phi_locFree
  jrNZ_congr gword_congr ptrsOf_congr G_congr sg0 sg1)

variable {σ : Type} {X : Ctx 64}

/-! ## The dispatch check and its leaf count -/

/-- `f(args); return e` with `f ∈ hs`. -/
def isCR (hs : List MlS) (p q : ProgHOL 64) : Bool :=
  match p, q with
  | .call (some (none, none)) f _, .return _ => decide (f ∈ hs)
  | _, _ => false

def isRaiseB : ProgHOL 64 → Bool
  | .raise _ _ => true
  | _ => false

def isCallB : ProgHOL 64 → Bool
  | .call _ _ _ => true
  | _ => false

/-- **The dispatch check** (as `Frames.dchk`). -/
def dchkB (hs : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .raise _ _ => true
  | .seq p q => isCR hs p q || isRaiseB p || (dchkB hs p && dchkB hs q)
  | .ite _ p q => dchkB hs p && dchkB hs q
  | _ => false

/-- The number of `call; return` leaves (an upper bound on the calls a run makes). -/
def dN : ProgHOL 64 → Nat
  | .seq p q => if isCallB p then 1 else dN p + dN q
  | .ite _ p q => dN p + dN q
  | _ => 0

theorem isCR_eq {hs : List MlS} {p q : ProgHOL 64} (h : isCR hs p q = true) :
    ∃ f args e, p = .call (some (none, none)) f args ∧ q = .return e ∧ f ∈ hs := by
  unfold isCR at h
  split at h
  · exact ⟨_, _, _, rfl, rfl, of_decide_eq_true h⟩
  · cases h

theorem isRaiseB_eq {p : ProgHOL 64} (h : isRaiseB p = true) : ∃ x e, p = .raise x e := by
  unfold isRaiseB at h
  split at h
  · exact ⟨_, _, rfl⟩
  · cases h

theorem isCallB_false {hs : List MlS} {p : ProgHOL 64} (h : dchkB hs p = true) :
    isCallB p = false := by
  cases p <;> simp_all [dchkB, isCallB]

/-- An accepted tree leaves the state alone on a normal exit (no call returns normally out of
it), so any precondition survives it. -/
theorem dchk_none {hs : List MlS} {P : State σ → Prop} :
    ∀ p : ProgHOL 64, dchkB hs p = true → Hoare σ X P p (fun r t => r = none → P t)
  | .skip, _ => hoare_skip fun _ _ h _ => h
  | .raise _ _, _ => hoare_raise
  | .seq p q, h => by
      simp only [dchkB, Bool.or_eq_true, Bool.and_eq_true] at h
      by_cases hc : isCR hs p q = true
      · obtain ⟨f, args, e, rfl, rfl, -⟩ := isCR_eq hc
        refine hoare_seq (R := fun _ _ => True) (fun _ _ _ _ => trivial)
          (fun r _ _ hr _ _ h0 => absurd h0 hr) ?_
        exact hoare_return fun _ _ _ _ _ h0 => by cases h0
      · by_cases hr : isRaiseB p = true
        · obtain ⟨x, e, rfl⟩ := isRaiseB_eq hr
          exact hoare_seq (R := fun _ _ => False) hoare_raise (fun _ _ _ _ _ h => h.elim)
            (fun _ _ h => h.elim)
        · have hpq : dchkB hs p = true ∧ dchkB hs q = true := by
            rcases h with (h | h) | h
            · exact absurd h hc
            · exact absurd h hr
            · exact h
          refine hoare_seq (dchk_none p hpq.1) (fun r _ _ hr _ _ h0 => absurd h0 hr) ?_
          exact hoare_pre (dchk_none q hpq.2) fun _ _ h => h rfl
  | .ite _ p q, h => by
      simp only [dchkB, Bool.and_eq_true] at h
      exact hoare_ite (hoare_pre (dchk_none p h.1) fun _ _ h => h.1)
        (hoare_pre (dchk_none q h.2) fun _ _ h => h.1)
  | .dec _ _ _ _, h => by simp [dchkB] at h
  | .assign _ _ _, h => by simp [dchkB] at h
  | .primitive _ _ _, h => by simp [dchkB] at h
  | .store _ _, h => by simp [dchkB] at h
  | .store32 _ _, h => by simp [dchkB] at h
  | .storeByte _ _, h => by simp [dchkB] at h
  | .while _ _, h => by simp [dchkB] at h
  | .break, h => by simp [dchkB] at h
  | .continue, h => by simp [dchkB] at h
  | .call _ _ _, h => by simp [dchkB] at h
  | .decCall _ _ _ _ _, h => by simp [dchkB] at h
  | .extCall _ _ _ _ _, h => by simp [dchkB] at h
  | .return _, h => by simp [dchkB] at h
  | .shMemLoad _ _ _ _, h => by simp [dchkB] at h
  | .shMemStore _ _ _, h => by simp [dchkB] at h
  | .tick, h => by simp [dchkB] at h
  | .annot _ _, h => by simp [dchkB] at h

/-- **The dispatch cost.** Every handler of `hs` costs at most `B` from entry states satisfying
`Pf`, and `P` gives `Pf` at every call entry: an accepted tree costs at most `dN p * (1 + B)`. -/
theorem dcost {hs : List MlS} {Pf : List (ValueHOL 64) → State σ → Prop} {B : Nat}
    (hf : ∀ f ∈ hs, Inv.CalleeCostP σ X f Pf B) {P : State σ → Prop}
    (hP : ∀ s, P s → ∀ vs callee, Pf vs (callEntryStateHOLFinite s callee)) :
    ∀ p : ProgHOL 64, dchkB hs p = true → Inv.CostP σ X P p (dN p * (1 + B))
  | .skip, _ => (Inv.costP_of_cost cost_skip).mono (Nat.zero_le _)
  | .raise x e, _ => (Inv.costP_of_cost (cost_raise x e)).mono (Nat.zero_le _)
  | .seq p q, h => by
      simp only [dchkB, Bool.or_eq_true, Bool.and_eq_true] at h
      by_cases hc : isCR hs p q = true
      · obtain ⟨f, args, e, rfl, rfl, hfm⟩ := isCR_eq hc
        have h1 := Inv.costP_callD (P := P) (args := args) (hf f hfm)
          (fun s _ hs vs _ callee => hP s hs vs callee)
        have h2 := Inv.costP_seq (R := fun _ => True) h1 (fun _ _ _ _ _ => trivial)
          (Inv.costP_of_cost (cost_return e))
        refine h2.mono ?_
        simp only [dN, isCallB, if_true]
        omega
      · by_cases hr : isRaiseB p = true
        · obtain ⟨x, e, rfl⟩ := isRaiseB_eq hr
          exact (Inv.costP_seq (R := fun _ => False) (Bb := 0) (Inv.costP_of_cost (cost_raise x e))
            hoare_raise (fun _ _ h => h.elim)).mono (by omega)
        · have hpq : dchkB hs p = true ∧ dchkB hs q = true := by
            rcases h with (h | h) | h
            · exact absurd h hc
            · exact absurd h hr
            · exact h
          have ip := dcost hf hP p hpq.1
          have iq := dcost hf hP q hpq.2
          refine (Inv.costP_seq ip (dchk_none p hpq.1) iq).mono ?_
          simp only [dN, isCallB_false hpq.1, Bool.false_eq_true, if_false, Nat.add_mul]
          omega
  | .ite c p q, h => by
      simp only [dchkB, Bool.and_eq_true] at h
      have ip := dcost hf hP p h.1
      have iq := dcost hf hP q h.2
      refine (Inv.costP_ite (c := c) (ip.pre fun _ _ h => h.1) (iq.pre fun _ _ h => h.1)).mono ?_
      simp only [dN, Nat.add_mul]
      omega
  | .dec _ _ _ _, h => by simp [dchkB] at h
  | .assign _ _ _, h => by simp [dchkB] at h
  | .primitive _ _ _, h => by simp [dchkB] at h
  | .store _ _, h => by simp [dchkB] at h
  | .store32 _ _, h => by simp [dchkB] at h
  | .storeByte _ _, h => by simp [dchkB] at h
  | .while _ _, h => by simp [dchkB] at h
  | .break, h => by simp [dchkB] at h
  | .continue, h => by simp [dchkB] at h
  | .call _ _ _, h => by simp [dchkB] at h
  | .decCall _ _ _ _ _, h => by simp [dchkB] at h
  | .extCall _ _ _ _ _, h => by simp [dchkB] at h
  | .return _, h => by simp [dchkB] at h
  | .shMemLoad _ _ _ _, h => by simp [dchkB] at h
  | .shMemStore _ _ _, h => by simp [dchkB] at h
  | .tick, h => by simp [dchkB] at h
  | .annot _ _, h => by simp [dchkB] at h

/-! ## Arity: a function without parameters is only entered with no arguments -/

theorem lookupCode_nil {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {bd : ProgHOL 64} {rsh : ShapeHOL} (hc : code f = some ([], bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    vs = [] ∧ body = bd := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, -, -⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, -, -⟩ := hx
      obtain ⟨-, hlen, -⟩ := hcond
      match vs, hlen with
      | [], _ => exact ⟨rfl, rfl⟩
    · simp at hx

/-- The body a successful lookup installs is the code map's. -/
theorem lookupCode_body {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some (ps, bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, -, -⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · simp only [Option.some.injEq, Prod.mk.injEq] at hx
      exact hx.1.symm
    · simp at hx

/-- A `CondCost` of a function without parameters, as a conditional entry whose precondition
does not mention the arguments. -/
theorem condCost_nil {C : Cfg} {H : Hooks σ} {f : MlS} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some ([], bd, rsh)) {sg : Sig} (hsg : sg.params = [])
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop} {B : Nat}
    (h : CondCost σ X C H f sg Pre B) :
    Inv.CalleeCostP σ X f (fun _ s => ∃ Γ p, G C H Γ s ∧ ptrsOf s = some p ∧ Pre [] s Γ) B := by
  intro vs body callee rs hl s hs ⟨hloc, Γ, p, hG, hp, hpre⟩ hg
  obtain ⟨rfl, -⟩ := lookupCode_nil hcode hl
  have hA : ArgsOK C Γ p sg.params [] := by
    refine ⟨by rw [hsg]; rfl, fun i pt v hpt _ => ?_⟩
    rw [hsg] at hpt
    simp at hpt
  exact h [] body callee rs hl s hs ⟨hloc, Γ, p, hG, hp, hA, hpre⟩ hg

/-! ## `op_dispatch` -/

/-- The table handlers of `op_dispatch` (every handler except `op_sload` / `op_sstore`). -/
def odTab : List MlS := [nm "op_stop", nm "op_add", nm "op_mul", nm "op_sub", nm "op_div",
  nm "op_sdiv", nm "op_mod", nm "op_smod", nm "op_addmod", nm "op_mulmod", nm "op_exp",
  nm "op_signextend", nm "op_lt", nm "op_gt", nm "op_slt", nm "op_sgt", nm "op_eq", nm "op_iszero",
  nm "op_and", nm "op_or", nm "op_xor", nm "op_not", nm "op_byte", nm "op_shl", nm "op_shr",
  nm "op_sar", nm "op_clz", nm "op_keccak", nm "op_address", nm "op_balance", nm "op_origin",
  nm "op_caller", nm "op_callvalue", nm "op_calldataload", nm "op_calldatasize",
  nm "op_calldatacopy", nm "op_codesize", nm "op_codecopy", nm "op_gasprice", nm "op_extcodesize",
  nm "op_extcodecopy", nm "op_returndatasize", nm "op_returndatacopy", nm "op_extcodehash",
  nm "op_blockhash", nm "op_coinbase", nm "op_timestamp", nm "op_number", nm "op_prevrandao",
  nm "op_gaslimit", nm "op_chainid", nm "op_selfbalance", nm "op_basefee", nm "op_blobhash",
  nm "op_blobbasefee", nm "op_slotnum", nm "op_pop", nm "op_mload", nm "op_mstore",
  nm "op_mstore8", nm "op_jump", nm "op_jumpi", nm "op_pc", nm "op_msize", nm "op_gas",
  nm "op_jumpdest", nm "op_tload", nm "op_tstore", nm "op_mcopy", nm "op_push", nm "op_dup",
  nm "op_swap", nm "op_log", nm "op_dupn", nm "op_swapn", nm "op_exchange", nm "op_create",
  nm "op_call", nm "op_callcode", nm "op_return", nm "op_delegatecall", nm "op_create2",
  nm "op_staticcall", nm "op_revert", nm "op_selfdestruct"]

/-- Every handler `op_dispatch` calls. -/
def odNames : List MlS := nm "op_sload" :: nm "op_sstore" :: odTab

/-- Every name of `fs` has a table entry `≤ Bt`. -/
def tabLe (Bt : Nat) (fs : List MlS) : Bool :=
  fs.all fun f => match Shards.finalState.1.lookup f with
    | some b => Nat.ble b Bt
    | none => false

theorem tabLe_get {Bt : Nat} {fs : List MlS} (h : tabLe Bt fs = true) {f : MlS} (hf : f ∈ fs) :
    ∃ b, Shards.finalState.1.lookup f = some b ∧ b ≤ Bt := by
  unfold tabLe at h
  have := List.all_eq_true.mp h f hf
  revert this
  split
  · rename_i b hb
    intro hd
    exact ⟨b, hb, Nat.le_of_ble_eq_true hd⟩
  · intro hd; cases hd

/-- The 85 table handlers cost at most `2^392` (the CALL / CREATE family is about `2^391`). -/
theorem odTab_le : tabLe (2 ^ 269) odTab = true := by
  rw [show (2 : Nat) ^ 269 = 948568795032094272909893509191171341133987714380927500611236528192824358010355712 from rfl]
  simp only [tabLe, odTab, List.all_cons, List.all_nil, Bool.and_true, Bool.and_eq_true]
  repeat' constructor

/-- `op_dispatch`'s translated body. -/
abbrev odBody : ProgHOL 64 := (declPair Guest.Software.guestFn_op_dispatch).2.2

theorem od_dchk : dchkB odNames odBody = true := by decide +kernel

/-- The number of handler leaves of `op_dispatch`. -/
def odN : Nat := dN odBody

theorem od_code : ∃ rs, guestCode (nm "op_dispatch") =
    some ((declPair Guest.Software.guestFn_op_dispatch).2.1, odBody, rs) :=
  declPair_valid (List.getElem_mem (n := 577) (by decide)) ⟨_, rfl⟩

theorem sload_code : ∃ rs, guestCode (nm "op_sload") =
    some ([], (declPair Guest.Software.guestFn_op_sload).2.2, rs) :=
  declPair_valid (List.getElem_mem (n := 527) (by decide)) ⟨_, rfl⟩

theorem sstore_code : ∃ rs, guestCode (nm "op_sstore") =
    some ([], (declPair Guest.Software.guestFn_op_sstore).2.2, rs) :=
  declPair_valid (List.getElem_mem (n := 528) (by decide)) ⟨_, rfl⟩

/-- `PreOpX` depends only on the memory and the globals. -/
theorem preOpX_entry {M : Nat} {vs vs' : List (ValueHOL 64)} {s : State σ} {Γ : Gam}
    (callee : HolFiniteMapExact MlS (ValueHOL 64)) (h : PreOpX guestC tEV tCK GP GR M vs s Γ) :
    PreOpX guestC tEV tCK GP GR M vs' (callEntryStateHOLFinite s callee) Γ := by
  obtain ⟨⟨hx, hΦ, hrdy⟩, hJ⟩ := h
  have hm' : (callEntryStateHOLFinite s callee).memory = s.memory := rfl
  have hg' : (callEntryStateHOLFinite s callee).globals = s.globals := rfl
  have hphi : Phi (callEntryStateHOLFinite s callee) = Phi s := phi_locFree s callee (s.clock - 1)
  refine ⟨⟨chainX_congr hm' hg' hx, by rw [hphi]; exact hΦ, ?_⟩, jrNZ_congr hg' hJ⟩
  unfold Ready DoneZ RunNZ at hrdy ⊢
  rw [hm', gword_congr hg', gword_congr hg']; exact hrdy

section disp
variable {H : Hooks σ} (hH : HooksLawful guestC H)
include hH

/-- **`op_dispatch`'s conditional cost** (`opCost` of `Frames.run_frames_condCost_F(B)`), from the
conditional costs of `op_sload` and `op_sstore` under the same `PreOpX … M`. -/
theorem op_dispatch_condCost {M Bsl Bss : Nat}
    (hsl : CondCost σ guestCtx guestC H (nm "op_sload") (sg0 []) (PreOpX guestC tEV tCK GP GR M) Bsl)
    (hss : CondCost σ guestCtx guestC H (nm "op_sstore") (sg0 []) (PreOpX guestC tEV tCK GP GR M) Bss) :
    CondCost σ guestCtx guestC H (nm "op_dispatch") (sg1 []) (PreOpX guestC tEV tCK GP GR M)
      (odN * (1 + max (2 ^ 269) (max Bsl Bss))) := by
  -- the handlers' entry precondition: `G` and `PreOpX`
  let Pf : List (ValueHOL 64) → State σ → Prop := fun _ s =>
    ∃ Γ p, G guestC H Γ s ∧ ptrsOf s = some p ∧ PreOpX guestC tEV tCK GP GR M [] s Γ
  have hf : ∀ f ∈ odNames, Inv.CalleeCostP σ guestCtx f Pf (max (2 ^ 269) (max Bsl Bss)) := by
    intro f hf
    simp only [odNames, List.mem_cons] at hf
    rcases hf with rfl | rfl | hf
    · obtain ⟨rs, hc⟩ := sload_code
      exact (condCost_nil (by rw [guestCtx_code]; exact hc) rfl hsl).mono (by omega)
    · obtain ⟨rs, hc⟩ := sstore_code
      exact (condCost_nil (by rw [guestCtx_code]; exact hc) rfl hss).mono (by omega)
    · obtain ⟨b, hb, hle⟩ := tabLe_get odTab_le hf
      exact (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (Wire.tbLe_of_eq hb))).mono (by omega)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rs', hc⟩ := od_code
  obtain rfl := lookupCode_body hc hl
  refine dcost hf ?_ odBody od_dchk
  rintro s ⟨-, Γ, p, hG, hp, -, hpre⟩ vs' callee'
  exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, by rw [ptrsOf_congr rfl]; exact hp,
    preOpX_entry callee' hpre⟩

end disp

end InitECandidate.Solver.Band

#print axioms InitECandidate.Solver.Band.dcost
#print axioms InitECandidate.Solver.Band.condCost_nil
#print axioms InitECandidate.Solver.Band.odTab_le
#print axioms InitECandidate.Solver.Band.od_dchk
#print axioms InitECandidate.Solver.Band.op_dispatch_condCost
