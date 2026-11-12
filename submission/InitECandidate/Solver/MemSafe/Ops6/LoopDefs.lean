import InitECandidate.Solver.MemSafe.Ops6.CallQ
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The topics pop loop of `op_log` (sonnet-log)

```
while i < ntopics { var t = stack_pop(); u256_to_be32(t, topics + i * 32); i = i + 1; }
```
on `GKB b n` with `[b, b + n) = [topics, topics + 32 * ntopics + 8)` the `alloc`ed block.
`lg_loop`: from `GKB`, with `ntopics ≤ 1024` and the block below `heapEnd`, the loop ends in `GK d`
with `MEM_LEN` (EV slot 4) and every local except `i` unchanged.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem cmp_less_nat {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63) :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less x y = true ↔ x.toNat < y.toNat := by
  have hx' : x.toNat < 9223372036854775808 := by omega
  have hy' : y.toNat < 9223372036854775808 := by omega
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL,
    Flapjack.Compiler.Encoders.Asm.holAsmSignedLess]
  simp [hx', hy']

theorem lg_bufOK_sub {Γ : Gam} {p : Ptrs} {b n b' n' : Nat} (h : BufOK guestC Γ p b n) (hb : b ≤ b')
    (hn : b' + n' ≤ b + n) : BufOK guestC Γ p b' n' := by
  intro a ha
  obtain ⟨h1, h2, h3⟩ := ha
  exact h a ⟨h1, by omega, by omega⟩

/-! ## Code and tables -/

abbrev lgCond : ExpHOL 64 := .cmp .less (lv (nm "i")) (lv (nm "ntopics"))
abbrev lgDst : ExpHOL 64 := .op .add [lv (nm "topics"), .panop .mul [lv (nm "i"), cw 32]]
abbrev lgIncr : ProgHOL 64 := .assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])
abbrev lgCall : ProgHOL 64 := callD (nm "u256_to_be32") [lv (nm "t"), lgDst]
abbrev lgBody : ProgHOL 64 :=
  .decCall (nm "t") (shK 4) (nm "stack_pop") [] (.seq lgCall lgIncr)

def lgE : GEnv := ⟨[], [nm "stack_pop", nm "u256_to_be32"], [Hooks.gJn]⟩
def lgPopSg : Sig := ⟨[], [], [], false⟩
def lgTbSg : Sig := ⟨[.any, .buf 32], [], [], false⟩

theorem lg_pop_mem : (nm "stack_pop", lgPopSg, [Shards.capEv [2]]) ∈ ShardsJL.tab26 := by
  decide +kernel
theorem lg_pop_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "stack_pop") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem lg_pop_ok : PlainOKB lgE (nm "stack_pop") lgPopSg [Shards.capEv [2]] 0 := by
  decide +kernel
theorem lg_tb_mem : (nm "u256_to_be32", lgTbSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by
  decide +kernel
theorem lg_tb_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "u256_to_be32") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem lg_tb_ok : PlainOKB lgE (nm "u256_to_be32") lgTbSg [] 2 := by decide +kernel

theorem lg_body_eq_aux : lgBody = .decCall (nm "t") (shK 4) (nm "stack_pop") []
    (.seq lgCall lgIncr) := rfl

/-! ## The invariant and the posts -/

def LgI (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (e : BitVec 64) (u0 : State σ)
    (nt L0 : BitVec 64) (b n d : Nat) (s : State σ) : Prop :=
  ∃ iw : BitVec 64, s.locals.lookup (nm "i") = some (.val (.word iw)) ∧ iw.toNat ≤ nt.toNat ∧
    (∀ y, y ≠ nm "i" → s.locals.lookup y = u0.locals.lookup y) ∧
    GKB (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs b n d s ∧ fld s.memory e 32 = L0

def LgQ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (e : BitVec 64) (u0 : State σ)
    (L0 : BitVec 64) (d : Nat) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → (∀ y, y ≠ nm "i" → t.locals.lookup y = u0.locals.lookup y) ∧
    GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs d t ∧ fld t.memory e 32 = L0) ∧
  ∀ r', r = some r' → ¬ Abortive r' →
    GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (rbd r') t

def LgBQ (I : State σ → Prop) (Q : Option (PanSemResultExact 64) → State σ → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → I t) ∧ (r = some .continue → I t) ∧ (r = some .break → Q none t) ∧
    ∀ r', r = some r' → r' ≠ .continue → r' ≠ .break → Q r t

theorem abn_ne_cont {r : PanSemResultExact 64} (h : Abn r) : r ≠ .continue := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp
theorem abn_ne_brk {r : PanSemResultExact 64} (h : Abn r) : r ≠ .break := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp

section loop
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "KB" => GKB (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem lgBQ_abn {I : State σ → Prop} {u0 : State σ} {L0 : BitVec 64} {d : Nat}
    {r : PanSemResultExact 64} {t : State σ} (hr : Abn r) (hK : ¬ Abortive r → KJ 0 t) :
    LgBQ I (LgQ Γ0 s0 p0 fs e u0 L0 d) (some r) t := by
  refine ⟨fun h => (by cases h), fun h => absurd (Option.some.inj h) (abn_ne_cont hr),
    fun h => absurd (Option.some.inj h) (abn_ne_brk hr), fun r' h _ _ => ?_⟩
  refine ⟨fun h0 => (by cases h0), fun r'' h'' hna => ?_⟩
  have h2 := Option.some.inj h''
  subst h2
  rw [rbd_abn hr]
  exact hK hna

end loop

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.cmp_less_nat
#print axioms InitECandidate.Solver.MemSafe.Frames.lgBQ_abn
#print axioms InitECandidate.Solver.MemSafe.Frames.lg_pop_ok
#print axioms InitECandidate.Solver.MemSafe.Frames.lg_tb_ok
