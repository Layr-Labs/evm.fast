import InitECandidate.Solver.MemSafe.Rcpt.BoundFn
import InitECandidate.Solver.MemSafe.Rcpt.Rules

set_option autoImplicit false

/-!
# The invariant of the `encode_receipt` walk

`RI a Fl t`: the above-writer invariant `AwInv a t` (so `G` and the objects of `Γ` stay below `h0`),
plus: memory differs from the entry memory only on `Rm a` (the `WCell`s of `Γ` and cells unallocated
at entry), plus: the heap pointer is at least `Fl`.

Callee specs `ISp (RI a Fl)` for the writers, `alloc`, `logs_encoded_bound`, `encode_logs`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def Rm (a : AwE σ) (x : BitVec 64) : Prop := WCell a.C a.Γ0 x ∨ ¬ a.p0.Allocated x.toNat

def RI (a : AwE σ) (Fl : Nat) (t : State σ) : Prop :=
  AwInv a t ∧ ModifiesOnly (Rm a) a.s0.memory t.memory ∧ ∃ p', ptrsOf t = some p' ∧ Fl ≤ p'.hp

theorem notAlloc_range {p : Ptrs} (hord : p.Ordered) {x : Nat} (h1 : p.hp ≤ x) (h2 : x < heapEnd) :
    ¬ p.Allocated x := by
  unfold Ptrs.Ordered at hord
  unfold Ptrs.Allocated
  omega

theorem ri_stable {a : AwE σ} (hK : AwOK a) (Fl : Nat) : IStable (RI a Fl) := by
  intro s t h hm hg hd hbe
  refine ⟨awInv_same hK h.1 hm hg hd hbe, by rw [hm]; exact h.2.1, ?_⟩
  obtain ⟨p', hp', hf⟩ := h.2.2
  exact ⟨p', by rw [Frames.ptrsOf_congr hg]; exact hp', hf⟩

theorem ri_mono {a : AwE σ} {Fl Fl' : Nat} {t : State σ} (h : RI a Fl t) (hle : Fl' ≤ Fl) :
    RI a Fl' t := by
  obtain ⟨p', hp', hf⟩ := h.2.2
  exact ⟨h.1, h.2.1, p', hp', by omega⟩

theorem ri_init {a : AwE σ} (hG : G a.C a.H a.Γ0 a.s0) (hp : ptrsOf a.s0 = some a.p0)
    (hB : Below a.Γ0 a.h0) : RI a a.p0.hp a.s0 :=
  ⟨awInv_init a hG hp hB, fun _ _ => rfl, a.p0, hp, Nat.le_refl _⟩

theorem ri_write {a : AwE σ} (hK : AwOK a) {Fl : Nat} {s t : State σ} (h : RI a Fl s)
    (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    {R : BitVec 64 → Prop} (hmod : ModifiesOnly R s.memory t.memory)
    (hR : ∀ x, R x → a.p0.hp ≤ x.toNat ∧ x.toNat < heapEnd) : RI a Fl t := by
  have hle := hK.hle
  refine ⟨awInv_write hK h.1 hg hd hbe hmod (fun x hx => by have := (hR x hx).1; omega), ?_, ?_⟩
  · intro x hx
    have hnR : ¬ R x := fun hr => hx (Or.inr (notAlloc_range hK.hord (hR x hr).1 (hR x hr).2))
    rw [hmod x hnR]
    exact h.2.1 x hx
  · obtain ⟨p', hp', hf⟩ := h.2.2
    exact ⟨p', by rw [Frames.ptrsOf_congr hg]; exact hp', hf⟩

/-- A footprint writer. -/
theorem isp_footRet {a : AwE σ} (hK : AwOK a) {Fl : Nat} {f : MlS}
    {PreF PreX : List (ValueHOL 64) → Prop} {R : List (ValueHOL 64) → BitVec 64 → Prop}
    {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop} (hf : FootRet σ X f PreF R RetF)
    (hR : ∀ vs x, PreX vs → R vs x → a.p0.hp ≤ x.toNat ∧ x.toNat < heapEnd)
    (hPre : ∀ vs, PreX vs → PreF vs) :
    ISp (RI a Fl) X f (fun vs _ => PreX vs) (fun vs v _ => RetF vs v) := by
  have hd := Helpers.funSpec_dom (σ := σ) (X := X) f
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  have h1 := hf vs body callee rs hl s hs hloc r hr
  have h2 := hd vs body callee rs hl s hs hloc r hr
  subst hv
  obtain ⟨hg, hmod, hret⟩ := h1 (by simp [Good]) (hPre vs hP)
  exact ⟨ri_write hK hinv hg h2.1 h2.2 hmod (hR vs · hP), hret v rfl⟩

end InitECandidate.Solver.MemSafe.Rcpt
