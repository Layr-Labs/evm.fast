import InitECandidate.Solver.MemSafe.Rec.TxEncCode

set_option autoImplicit false

/-!
# Cursor sequencing for `tx_encode_generic`

* `curQ_mono`, `cur_mono`: a larger budget.
* `hoareG_seqC`: sequencing through a cursor post; `hoareG_seqW`: `w = f(…); p = p + w; k`;
  `hoareG_iteS`: `if c { a }` with the cursor; `hoareG_iteC`: two branches.
* `stable_obj`: a byte of a `Γ0` object all of whose slots are `prot` is unchanged in the
  activation of a signature without buffer parameters and capabilities.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

section seq
variable {a : Act σ} {B : BitVec 64} {n : Nat} {Lf : LocalsH → Prop}

theorem cur_mono {U U' : Nat} (h : U ≤ U') {t : State σ} (hc : Cur a B n Lf U t) :
    Cur a B n Lf U' t := by
  obtain ⟨hL, ⟨u, hu, hp⟩, hw, hb⟩ := hc
  exact ⟨hL, ⟨u, by omega, hp⟩, hw, hb⟩

theorem curQ_mono {U U' : Nat} (h : U ≤ U') {r : Option (PanSemResultExact 64)} {t : State σ}
    (hc : CurQ a B n Lf U r t) : CurQ a B n Lf U' r t :=
  ⟨fun hr => cur_mono h (hc.1 hr), hc.2⟩

theorem hoareG_seqC {U U1 : Nat} {p q : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hp : HoareG σ X (Cur a B n Lf U) p (CurQ a B n Lf U1))
    (hq : HoareG σ X (Cur a B n Lf U1) q Q)
    (hQ : ∀ r t, r ≠ none → AbnQ a r t → Q r t) :
    HoareG σ X (Cur a B n Lf U) (.seq p q) Q :=
  hoareG_seq hp (fun r t _ hr _ h => hQ r t hr h.2) (hoareG_pre hq fun _ _ h => h.1 rfl)

theorem hoareG_seqW (ha : ActOK a X) {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {F : List (ValueHOL 64) → State σ → Nat} (hf : WSpec σ X f Pre F) {args : List (ExpHOL 64)}
    (hLf : LfOK Lf) {U m : Nat} (hroom : 10 + U + m ≤ n) (hBn : B.toNat + n < 2 ^ 64)
    (hpre : ∀ s : State σ, InCtx s X → Cur a B n Lf U s → ∀ (u : Nat), u ≤ U →
      s.locals.lookup (nm "p") = some (.val (.word (B + BitVec.ofNat 64 (10 + u)))) →
      ∀ vs, evs s (lv (nm "p") :: args) = some vs → ∀ callee,
        argW vs 0 = some (B + BitVec.ofNat 64 (10 + u)) ∧
        Pre vs (callEntryStateHOLFinite s callee) ∧ F vs (callEntryStateHOLFinite s callee) ≤ m)
    {k : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : HoareG σ X (Cur a B n Lf (U + m)) k Q)
    (hQ : ∀ r t, r ≠ none → AbnQ a r t → Q r t) :
    HoareG σ X (Cur a B n Lf U)
      (.seq (.call (some (some (.local, nm "w"), none)) f (lv (nm "p") :: args)) (.seq teP' k)) Q :=
  hoareG_seq (hoareG_wcall ha hf hLf hroom hBn hpre) (fun r t _ hr _ h => hQ r t hr h.2)
    (hoareG_pre (hoareG_seq (hoareG_wadv ha hLf) (fun r t _ hr _ h => hQ r t hr h.2)
      (hoareG_pre hk fun _ _ h => h.1 rfl)) fun _ _ h => h.1 rfl)

theorem hoareG_iteS {U U' : Nat} (hU : U ≤ U') {c : ExpHOL 64} {p : ProgHOL 64}
    (hp : HoareG σ X (fun s => Cur a B n Lf U s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) p
      (CurQ a B n Lf U')) :
    HoareG σ X (Cur a B n Lf U) (.ite c p .skip) (CurQ a B n Lf U') :=
  hoareG_ite hp (hoareG_skip fun _ _ h => ⟨fun _ => cur_mono hU h.1, fun _ h => nomatch h⟩)

theorem hoareG_iteC {U U' : Nat} {c : ExpHOL 64} {p q : ProgHOL 64}
    (hp : HoareG σ X (Cur a B n Lf U) p (CurQ a B n Lf U'))
    (hq : HoareG σ X (Cur a B n Lf U) q (CurQ a B n Lf U')) :
    HoareG σ X (Cur a B n Lf U) (.ite c p q) (CurQ a B n Lf U') :=
  hoareG_ite (hoareG_pre hp fun _ _ h => h.1) (hoareG_pre hq fun _ _ h => h.1)

end seq

/-! ## Stability of `prot` objects -/

theorem lay_disj' {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj} (ho : o ∈ Γ)
    (ho' : o' ∈ Γ) (hne : o ≠ o') : o.hi ≤ o'.lo ∨ o'.hi ≤ o.lo := by
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho'
  exact hL.2 i j hi hj (fun h => hne (by subst h; rfl))

/-- A byte of an all-`prot` `Γ0` object is unchanged in an activation without buffer parameters
and capabilities. -/
theorem stable_obj {a : Act σ} (ha : ActOK a X) (hL0 : Layout a.C a.p0 a.Γ0)
    (hps : ∀ pt ∈ a.sg.params, ∀ k, pt ≠ .buf k)
    (hpa : ∀ pt ∈ a.sg.params, ∀ i c d, pt ≠ .bufArg i c d) (hcs : a.caps = [])
    {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) {o : Obj} (ho : o ∈ a.Γ0)
    (hpr : ∀ k, (a.C.ty o.ty).slot k = .prot) {x : BitVec 64} (h1 : o.lo ≤ x.toNat)
    (h2 : x.toNat < o.hi) : s.memory x = a.s0.memory x := by
  refine hh.2.2.2.2.2.1 x fun hf => ?_
  rcases hf with ⟨o', ho', k', hk', hnp, rfl⟩ | ⟨i, w, hw, ⟨n0, hn, -⟩ | ⟨j, c, d, y, hn, -, -⟩⟩ |
    hna | ⟨-, hcp⟩
  · obtain ⟨e1, -⟩ := cell_toNat ha.hord0 hL0 ho' hk'
    by_cases he : o = o'
    · subst he; exact hnp (hpr k')
    · unfold Obj.HasSlot at hk'
      rcases lay_disj' hL0 ho ho' he with h | h <;> simp only [Obj.hi, Obj.lo] at h h1 h2 e1 <;>
        omega
  · exact hps _ (List.mem_of_getElem? hn) n0 rfl
  · exact hpa _ (List.mem_of_getElem? hn) j c d rfl
  · exact hna (live_alloc ha.hord0 hL0 ho h1 h2)
  · rw [hcs] at hcp
    obtain ⟨c, hc, -⟩ := hcp
    cases hc

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.stable_obj
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_seqW
