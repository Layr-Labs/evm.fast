import InitECandidate.Solver.MemSafe.Ptx.PtT19

/-!
# F3g: loop rules for the tail (`hn_whileG`), loop 1
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem pag_decClock {B : State σ → Prop} {En : Env} (hB : BLoc B) {u : State σ} (h : PAg B En u) :
    PAg B En (decClockHOLFinite u) := ⟨hB _ _ _ h.1, h.2⟩

/-- A loop whose body keeps the invariant. -/
theorem hn_whileG {B : State σ → Prop} {En : Env} {c : ExpHOL 64} {body : ProgHOL 64} (hB : BLoc B)
    (hbody : HN (PAg B En) body (PAg B En)) : HN (PAg B En) (.while c body) (PAg B En) :=
  hoare_while2 (I := PAg B En) (Qf := PAg B En) (fun s h => pag_decClock hB h)
    (hoare_pre hbody (fun s _ h => h.1)) (fun s _ hI _ => hI)

/-- **A counter loop** `while i < N { body }` with a body that keeps the invariant `B` and bumps the counter. -/
theorem hn_cloopG {B : State σ → Prop} {En : Env} {i : MlS} {cond : ExpHOL 64} {body : ProgHOL 64} {N : Nat}
    (hB : BLoc B)
    (hct : ∀ (x : BitVec 64) (s : State σ), x.toNat ≤ N → PAg B (En.set i (.val (.word x))) s → CondTrue s cond →
      x.toNat < N)
    (hcf : ∀ (x : BitVec 64) (s : State σ), x.toNat ≤ N → PAg B (En.set i (.val (.word x))) s →
      ev s cond = some (.val (.word 0)) → ¬ x.toNat < N)
    (hN : N ≤ 2 ^ 58)
    (hbody : ∀ x : BitVec 64, x.toNat < N →
      HN (PAg B (En.set i (.val (.word x)))) body (PAg B (En.set i (.val (.word (x + BitVec.ofNat 64 1)))))) :
    Hoare σ guestCtx (PAg B (En.set i (.val (.word 0)))) (.while cond body)
      (fun r t => r = none ∧ PAg B (En.set i (.val (.word (BitVec.ofNat 64 N)))) t) := by
  refine hoare_pre (hoare_while2
    (I := fun s : State σ => ∃ x : BitVec 64, x.toNat ≤ N ∧ PAg B (En.set i (.val (.word x))) s) ?_ ?_ ?_) ?_
  · intro s ⟨x, hx, hpa⟩
    exact ⟨x, hx, pag_decClock hB hpa⟩
  · intro s hs ⟨⟨x, hx, hpa⟩, hc⟩
    have hlt := hct x s hx hpa hc
    have h1 := hbody x hlt
    have hx1 : (x + BitVec.ofNat 64 1).toNat ≤ N := by rw [bv_succ (by omega)]; omega
    have h2 : Hoare σ guestCtx (PAg B (En.set i (.val (.word x)))) body (fun r t => r = none ∧
        ∃ y : BitVec 64, y.toNat ≤ N ∧ PAg B (En.set i (.val (.word y))) t) :=
      hoare_post h1 (fun r t _ _ h => ⟨h.1, x + BitVec.ofNat 64 1, hx1, h.2⟩)
    exact h2 s hs hpa
  · intro s hs ⟨x, hx, hpa⟩ hc
    have := hcf x s hx hpa hc
    have hxN : x = BitVec.ofNat 64 N := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_ofNat]
      rw [Nat.mod_eq_of_lt (by omega)]
      omega
    subst hxN
    exact hpa
  · intro s _ hpa
    exact ⟨0, by simp, hpa⟩

/-- Restricting the kept cells. -/
theorem tl_restrict {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z Z' : BitVec 64 → Prop} {O : List Obj} {u : State σ}
    {Γ : Gam} {p : Ptrs} (h : TlS A ref Z O u Γ p) (hs : ∀ a, Z' a → Z a) : TlS A ref Z' O u Γ p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  exact ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, fun a ha => h10 a (hs a ha), fun a ha => h11 a (hs a ha), h12, h13, h14⟩

theorem pag_restrict {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z Z' : BitVec 64 → Prop} {O : List Obj} {En : Env}
    {u : State σ} (h : PAg (TL A ref Z O) En u) (hs : ∀ a, Z' a → Z a) : PAg (TL A ref Z' O) En u :=
  ⟨by obtain ⟨Γ, p, hr⟩ := h.1; exact ⟨Γ, p, tl_restrict hr hs⟩, h.2⟩

/-- `ptS155`: loop 1 (`lst_push` of every log record onto `bo.LOGS`), then the continuation. -/
theorem tb2 {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
    {LLv : BitVec 64} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K)
    (hz : Z (K.E.bo + BitVec.ofNat 64 40) ∧ ref (K.E.bo + BitVec.ofNat 64 40) = LLv)
    (hLL : ∃ o ∈ K.E.Γ0, o.base = LLv ∧ o.ty = tLSTh)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (hslot : En (nm "slot") = none) (hi : En (nm "i") = none)
    (hk : Hoare σ guestCtx (PAg (TL K.A ref Z O) En) ptS156 QT) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) En) ptS155 QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS155
  refine hseqN ?_ hk
  unfold ptS157
  exact hn_whileG hB (hn_body1 hP hz hLL hBC hslot hi)

end InitECandidate.Solver.MemSafe.Ptx
