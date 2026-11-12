import InitECandidate.Solver.MemSafe.Eb.Cost1
import InitECandidate.Solver.MemSafe.Eb.PartX

/-!
# `execute_block`: the cost walk, part 2 (the cost hypotheses of the callees and the call rules)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- `n` unconstrained parameters. -/
def CcSig (n : Nat) : Sig := ⟨List.replicate n PT.any, [], [], true⟩

/-- The precondition of a conditional cost: the callee's `CallR` precondition, `JrNZ` and `ev` / `cur_cont` small. -/
def CcPre (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop) : List (ValueHOL 64) → State σ → Gam → Prop :=
  fun vs s Γ => JrNZ s ∧ EvCc s ∧ ∃ p, ptrsOf s = some p ∧ Pre vs s Γ p

/-- The `Pre` of the `process_unchecked_system_transaction` hypothesis (`HypPuc`'s). -/
def PucPre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop :=
  fun vs s Γ p => CPre Γ ∧ BalG Γ s ∧ ∃ T D N, vs = [.val (.word T), .val (.word D), .val (.word N)] ∧ BufOK guestC Γ p T.toNat 20 ∧
    N.toNat < 2 ^ 32

/-- The `Pre` of the `process_transaction` hypothesis (`HypPt`'s). -/
def PtPre (M : Nat) : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop := PtPreE M

def WdPre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop :=
  fun vs s Γ _ => CPre Γ ∧ BalG Γ s ∧ ∃ pl, vs = [.val (.word pl)] ∧ ∃ o ∈ Γ, o.base = pl ∧ o.ty = tPL

def GprPreC : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop :=
  fun vs s Γ _ => vs = [] ∧ CPre Γ ∧ BalG Γ s ∧ GprPre Γ s

def CsrPre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop :=
  fun vs _ Γ p => ArgsOK guestC Γ p Trie.csrSig.params vs

/-- `build_mpt_indexed`'s precondition together with the bound `N < 2^50` on the entry count. -/
def BmiPreC : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop :=
  fun vs s Γ p => ArgsOK guestC Γ p Trie.bmiSig.params vs ∧ Trie.BmiPre vs s Γ ∧
    ∃ A N O : BitVec 64, vs = [.val (.word A), .val (.word N), .val (.word O)] ∧ N.toNat < 2 ^ 50

def CondCostC (σ : Type) (f : MlS) (n : Nat) (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop) (B : Nat) : Prop :=
  CondCost σ guestCtx guestC (HR σ) f (CcSig n) (CcPre Pre) B

/-- **The cost hypotheses.** Each is a conditional cost at exactly the precondition `execute_block` establishes at the call. -/
def HypPucCost (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "process_unchecked_system_transaction") 3 PucPre B
def HypPtCost (σ : Type) (M B : Nat) : Prop := CondCostC σ (nm "process_transaction") 2 (PtPre M) B
def HypWdCost (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "process_withdrawals") 1 WdPre B
def HypGprCost (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "process_general_purpose_requests") 0 GprPreC B
def HypCsrCost (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "compute_state_root") 1 CsrPre B
def HypBmiCost (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "build_mpt_indexed") 3 BmiPreC B

theorem argsOK_cc {Γ : Gam} {p : Ptrs} {n : Nat} {vs : List (ValueHOL 64)} (h : vs.length = n) :
    ArgsOK guestC Γ p (CcSig n).params vs := by
  refine argsOK_any ?_ ?_
  · intro pt hpt; simp only [CcSig, List.mem_replicate] at hpt; exact hpt.2
  · simp [CcSig, h]

section calls
variable {E : EbE σ} {En : Env} {S : FS} {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop} {W : MlS → Prop} {n B : Nat}

theorem evs_length {s : State σ} {vs : List (ValueHOL 64)} (h : evs s args = some vs) : vs.length = args.length := by
  induction args generalizing vs with
  | nil => rw [evs_nil] at h; cases h; rfl
  | cons e es ih =>
    obtain ⟨v, vs', rfl, -, h2⟩ := evs_cons_inv h
    simp [ih h2]

/-- The cost of `f(args);` from a walk state, at a `CallOblK` precondition. -/
theorem cp_callK (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hc : CondCostC σ f n Pre B) (hlen : args.length = n) (h : CallOblK E En S args Pre D W) :
    Inv.CostP σ guestCtx (PA E En S) (.call (some (none, none)) f args) (1 + B + 0) := by
  refine Inv.costP_callD hc ?_
  intro s hs hpa vs hvs callee
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := pa_hpart hK hE0 hS hpa
  have hre := ebRun_loc hr callee (s.clock - 1)
  exact ⟨Γ, p, ebRun_G hre, ebRun_ptrs hre, argsOK_cc (by rw [evs_length hvs, hlen]),
    ebRun_jr hre, ⟨ebRun_ev hre, ebRun_cc hre⟩, p, ebRun_ptrs hre,
    h.pre s ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ vs hvs callee Γ p hr hL hC⟩

/-- The same from a plain walk state. -/
theorem cp_call (hc : CondCostC σ f n Pre B) (hlen : args.length = n) (h : CallObl E En S args Pre D W) :
    Inv.CostP σ guestCtx (PA E En S) (.call (some (none, none)) f args) (1 + B + 0) := by
  refine Inv.costP_callD hc ?_
  intro s hs hpa vs hvs callee
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hre := ebRun_loc hr callee (s.clock - 1)
  exact ⟨Γ, p, ebRun_G hre, ebRun_ptrs hre, argsOK_cc (by rw [evs_length hvs, hlen]),
    ebRun_jr hre, ⟨ebRun_ev hre, ebRun_cc hre⟩, p, ebRun_ptrs hre,
    h.pre s ⟨⟨Γ, p, hr, hL⟩, hlk⟩ vs hvs callee Γ p hr hL⟩

/-- The same from a walk state with an extra predicate. -/
theorem cp_callX {R : Gam → Ptrs → State σ → Prop} (hc : CondCostC σ f n Pre B) (hlen : args.length = n)
    (h : CallOblX E En S R args Pre D W) :
    Inv.CostP σ guestCtx (PAX E En S R) (.call (some (none, none)) f args) (1 + B + 0) := by
  refine Inv.costP_callD hc ?_
  intro s hs hpa vs hvs callee
  obtain ⟨⟨Γ, p, hr, hL, hR⟩, hlk⟩ := hpa
  have hre := ebRun_loc hr callee (s.clock - 1)
  exact ⟨Γ, p, ebRun_G hre, ebRun_ptrs hre, argsOK_cc (by rw [evs_length hvs, hlen]),
    ebRun_jr hre, ⟨ebRun_ev hre, ebRun_cc hre⟩, p, ebRun_ptrs hre,
    h.pre s ⟨⟨Γ, p, hr, hL, hR⟩, hlk⟩ vs hvs callee Γ p hr hL hR⟩

end calls

end InitECandidate.Solver.MemSafe.Eb
