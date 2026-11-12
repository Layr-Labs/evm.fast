import InitECandidate.Solver.MemSafe.Entry2.Final
import InitECandidate.Solver.MemSafe.Aw.Rule
import InitECandidate.Solver.MemSafe.Bal.Ub9

/-!
# F3: the two facts package K will provide (hypotheses until it lands)

State once, here, in exactly the form main swaps for K's theorems:

* `BKeep C Γ s t`: the `prot` cells of every `blockTys` (`tBOS` 76, `tBO` 77, `tMCO` 78) object of `Γ`
  are unchanged between `s` and `t`.
* `HypPm σ M`: `process_message`'s post additionally gives `BKeep guestC Γ s t` on a return (`PmRB`).
* `HypPcm σ M`: the same for `process_create_message` (only used until its own post is proved).
* `HypStBlock σ`: `G_st_block`, a store into a `prot` cell of a `blockTys` object of `Γ` keeps `G`.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The type of a log record (package L3b; stated locally in this shape, main replaces it at merge): all-`prot`, heap, untagged. -/
abbrev tLOG : Nat := 80

/-- A log record `x`: a `tLOG` object of `Γ` in `[heapBase, h0)`, with bounded `topics_n` / `data_n` fields. -/
def RecOK (Γ : Gam) (m : Mem) (h0 : Nat) (x : BitVec 64) : Prop :=
  (heapBase ≤ x.toNat ∧ x.toNat + 40 ≤ h0 ∧ ∃ o ∈ Γ, o.base = x ∧ o.ty = tLOG ∧ 40 ≤ o.size) ∧
    ((rd m (x + BitVec.ofNat 64 16)).toNat ≤ 2 ^ 20 ∧ (rd m (x + BitVec.ofNat 64 32)).toNat ≤ 2 ^ 30)

/-- (3) `LogsIn m hp e`: every log record of the list at `fld m e 88` (`EV_LOGS`; `LST_PTR` 0, `LST_N` 8) is a `RecOK` record
below `hp` (package: main arranges it as a new `GP` clause). -/
def LogsIn (Γ : Gam) (m : Mem) (hp : Nat) (e : BitVec 64) : Prop :=
  fld m e 88 = 0 ∨ ∀ i : Nat, i < (rd m (fld m e 88 + 8)).toNat →
    RecOK Γ m hp (rd m (rd m (fld m e 88) + BitVec.ofNat 64 (8 * i)))

/-- `PmFin` with the `LogsIn` clause (package L adds it to `GP`/`PmFin`; main swaps this for the real one). -/
def PmFinL (Γe : Gam) (se : State σ) (child : BitVec 64) (t : State σ) : Prop :=
  MarkV t.memory child ∧
    (∃ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ t ∧ (∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) ∧
      KeepH guestC Γe Γ se t ∧ BKeep guestC Γe se t ∧
        (∃ rec, ∀ p, ptrsOf t = some p → GP Γ t.memory p (child, rec)) ∧
        ∀ p', ptrsOf t = some p' → LogsIn Γ t.memory p'.hp child) ∧
    (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧
    (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax)

/-- Main's `PmFin` (L3b's `Frames.LogsIn`, with `JrNZ`) gives F3's `PmFinL`. -/
theorem pmFinL_of_pmFin {Γe : Gam} {se : State σ} {child : BitVec 64} {t : State σ}
    (h : PmFin Γe se child t) : PmFinL Γe se child t := by
  obtain ⟨h1, ⟨Γ, hG, ho, hk, hb, hgp, hli⟩, h3, h4, -⟩ := h
  exact ⟨h1, ⟨Γ, hG, ho, hk, hb, hgp, fun p hp => Or.inr fun i hi => hli p hp i hi⟩, h3, h4⟩

/-- `process_message`'s / `process_create_message`'s value relation with `LogsIn`. -/
def PmRL (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  ∀ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s →
    (∃ msg, vs = [.val (.word msg)] ∧ FoPre M msg Γ s) →
    ∀ v, r = .returned v → ∃ child, v = .val (.word child) ∧ PmFinL Γ s child t

def HypPm (σ : Type) (M : Nat) : Prop := FunSpec σ guestCtx (nm "process_message") (PmRL (σ := σ) M)

/-- (4) `rcpt_fresh` (main proves): `encode_receipt` with every log record below `h0` returns a slice
inside a block that was fresh at entry and lies below the exit heap pointer. The list `logs` is
argument 3; `RecsBelow m h0 logs`: all its records lie in `[heapBase, h0)`. -/
def RecsBelow (Γ : Gam) (m : Mem) (h0 : Nat) (logs : BitVec 64) : Prop :=
  ∀ i : Nat, i < (rd m (logs + 8)).toNat → RecOK Γ m h0 (rd m (rd m logs + BitVec.ofNat 64 (8 * i)))

def HypRcptFresh (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "encode_receipt") (fun vs s r t => ∀ v, r = .returned v →
    ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs) (logs : BitVec 64),
      G guestC (Hooks.guestHooksR (σ := σ)) Γ s → ptrsOf s = some p → Aw.Below Γ h0 → h0 % 8 = 0 →
      heapBase ≤ h0 → h0 ≤ p.hp → argW vs 3 = some logs → RecsBelow Γ s.memory h0 logs →
      ∃ p' rp rl, ptrsOf t = some p' ∧ flattenHOL v = [.word rp, .word rl] ∧ 1 ≤ rl.toNat ∧
        ∃ buf n : Nat, buf % 8 = 0 ∧ n % 8 = 0 ∧ p.hp ≤ buf ∧ buf ≤ rp.toNat ∧
          rp.toNat + rl.toNat ≤ buf + n ∧ buf + n ≤ p'.hp)

/-- `TxBuf` (decode_transaction's post, routed by main): the tx's `TO` and every access-list address
are `BufOK 20` (or `TO = 0`). Offsets: `TX_TO`, `TX_ACCESS_LIST` 208, `ACC_N` 216; `ACC_SIZE` 24, `ACC_ADDR` 0. -/
def TxBuf (Γ : Gam) (p : Ptrs) (m : Mem) (tx : BitVec 64) (txTo : Nat) : Prop :=
  (rd m (tx + BitVec.ofNat 64 txTo) = 0 ∨ BufOK guestC Γ p (rd m (tx + BitVec.ofNat 64 txTo)).toNat 20) ∧
  ∀ i : Nat, i < (rd m (tx + 216)).toNat →
    BufOK guestC Γ p (rd m (rd m (tx + 208) + BitVec.ofNat 64 (24 * i))).toNat 20

/-- `update_builder_from_tx`'s conditional cost (package C; no owner yet), for `Band2.incorporate_condCost`. -/
def HypUbCost (σ : Type) (BU : Nat) : Prop :=
  CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "update_builder_from_tx")
    Bal.biSig Bal.UbPre BU

end InitECandidate.Solver.MemSafe.Ptx
