import InitECandidate.Solver.MemSafe.Fq.Defs

set_option autoImplicit false

/-!
# `fq12_inv`: the callee record, call-argument lemmas, degree facts

* `CI`: the callee summaries of `fq12_inv` (`memzero`, `memcpy`, `fq_mul`, `fq_inv`,
  `u256_is_zero`, `fq_poly_deg`, `fq_poly_submul`) and the alloc/mark/release specs.
* `callMzP`, `callMcP`, `callMzD`: `memzero` / `memcpy` on a block pointer / the entry buffer.
* `Ex g l`: `OL g` plus a list of recorded local lookups.
* `DegOK D` (`D = -1` or `D < 13`) and the signed comparisons of `fq12_inv`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Fq
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

/-- The signature of `fq12_inv`: `d` is a 384-byte output, `a` is read only. -/
def invSig : Sig := ⟨[.buf 384, .any], [], [], false⟩

def sgAA : Sig := ⟨[.any, .any], [], [], false⟩
def sgA1 : Sig := ⟨[.any], [], [], false⟩

theorem toSA' {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} (h : CSumm σ X C H f sg []) :
    SumSpecA σ X C H f sg (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_mono h (fun _ _ _ _ c hc => absurd hc (by simp))
    (fun _ _ _ _ hcap => by obtain ⟨c, hc, -⟩ := hcap; exact absurd hc (by simp))
    (fun _ _ _ _ _ _ h => h)

/-- The callee summaries and activation facts of `fq12_inv`. -/
structure CI (σ : Type) (X : Ctx 64) (a : Act σ) : Prop where
  ha : ActOK a X
  hgrow : a.sg.grows = false
  hL0 : Layout a.C a.p0 a.Γ0
  mz : SumSpecA σ X a.Cb a.H (nm "memzero") Helpers.sigMemzero (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mc : SumSpecA σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mul : SumSpecA σ X a.Cb a.H (nm "fq_mul") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  inv : SumSpecA σ X a.Cb a.H (nm "fq_inv") sgA1 (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  isz : SumSpecA σ X a.Cb a.H (nm "u256_is_zero") sgA1 (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  deg : SumSpecA σ X a.Cb a.H (nm "fq_poly_deg") sgAA (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  degF : FunSpec σ X (nm "fq_poly_deg")
    (fun vs s r t => ∀ v, r = .returned v → Spec.Fq12.DegR vs s v t)
  sub : SumSpecA σ X a.Cb a.H (nm "fq_poly_submul") Bn2.bnSubSig Bn2.SubPre
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  hAl : AllocSpec σ X (nm "alloc") .heap
  hAc : Summ σ X a.Cb a.H (nm "alloc") allocSig
  hRel : ReleaseSpec σ X (nm "heap_release") gHeap
  hMk : MarkSpec' σ X (nm "heap_mark") gHeap

/-! ## `Ex`: `OL` plus recorded lookups -/

def Ex (g : FG) (l : List (String × ValueHOL 64)) (m : LocalsH) : Prop :=
  OL g m ∧ ∀ p ∈ l, Lk m p.1 p.2

theorem Ex.ol {g : FG} {l : List (String × ValueHOL 64)} {m : LocalsH} (h : Ex g l m) : OL g m := h.1

theorem Ex.get {g : FG} {l : List (String × ValueHOL 64)} {m : LocalsH} (h : Ex g l m) {x : String}
    {v : ValueHOL 64} (hx : (x, v) ∈ l) : Lk m x v := h.2 _ hx

theorem Ex.mono {g : FG} {l l' : List (String × ValueHOL 64)} {m : LocalsH} (h : Ex g l m)
    (hs : ∀ p ∈ l', p ∈ l) : Ex g l' m := ⟨h.1, fun p hp => h.2 p (hs p hp)⟩

theorem Ex.set {g : FG} {l : List (String × ValueHOL 64)} {s : State σ} (h : Ex g l s.locals)
    {y : String} (hy : Fr y) (hl : ∀ p ∈ l, nm y ≠ nm p.1) (u : ValueHOL 64) :
    Ex g l (setVarHOLFinite (nm y) u s).locals :=
  ⟨h.1.set hy u, fun p hp => (h.2 p hp).set u (hl p hp)⟩

theorem Ex.res {g : FG} {l : List (String × ValueHOL 64)} {m : LocalsH} (h : Ex g l m)
    {y : String} (hy : Fr y) (hl : ∀ p ∈ l, nm y ≠ nm p.1) (old : Option (ValueHOL 64)) :
    Ex g l (m.resVarEq (nm y, old)) :=
  ⟨h.1.res hy old, fun p hp => (h.2 p hp).res old (hl p hp)⟩

/-- `var y = v` (any state with the locals of `s`). -/
theorem Ex.dec {g : FG} {l : List (String × ValueHOL 64)} {s st : State σ} (h : Ex g l s.locals)
    {y : String} (hy : Fr y) (hl : ∀ p ∈ l, nm y ≠ nm p.1) (v : ValueHOL 64) :
    Ex g ((y, v) :: l) (setVarHOLFinite (nm y) v { st with locals := s.locals }).locals := by
  refine ⟨(h.1.set (s := { st with locals := s.locals }) hy v), fun p hp => ?_⟩
  rcases List.mem_cons.mp hp with rfl | hp
  · exact Lk.self _ _ _
  · exact (h.2 p hp).set (s := { st with locals := s.locals }) v (hl p hp)

/-- Re-assignment of the head variable. -/
theorem Ex.setHead {g : FG} {l : List (String × ValueHOL 64)} {s : State σ} {y : String}
    {v : ValueHOL 64} (h : Ex g ((y, v) :: l) s.locals) (hy : Fr y)
    (hl : ∀ p ∈ l, nm y ≠ nm p.1) (v' : ValueHOL 64) :
    Ex g ((y, v') :: l) (setVarHOLFinite (nm y) v' s).locals := by
  have h' : Ex g l s.locals := h.mono (fun p hp => List.mem_cons_of_mem _ hp)
  refine ⟨h.1.set hy v', fun p hp => ?_⟩
  rcases List.mem_cons.mp hp with rfl | hp
  · exact Lk.self _ _ _
  · exact (h'.2 p hp).set v' (hl p hp)

/-- Re-assignment of a pointer local to a block base. -/
theorem Ex.setPtr {g : FG} {l : List (String × ValueHOL 64)} {s : State σ} (h : Ex g l s.locals)
    {x : String} (hx : PtrN x) (hl : ∀ p ∈ l, nm x ≠ nm p.1) (w : BitVec 64)
    (hw : (w.toNat, 416) ∈ bs6 g) : Ex g l (setVarHOLFinite (nm x) (.val (.word w)) s).locals :=
  ⟨h.1.setPtr hx w hw, fun p hp => (h.2 p hp).set _ (hl p hp)⟩

theorem ex_of_ol {g : FG} {m : LocalsH} (h : OL g m) : Ex g [] m := ⟨h, fun p hp => absurd hp (by simp)⟩

/-- Pure facts in the precondition. -/
theorem hoareG_pureL {a : Act σ} {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} {Pr : Prop}
    {p : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : Pr → HoareG σ X (PK a K MK L) p Q) :
    HoareG σ X (PK a K MK (fun m => L m ∧ Pr)) p Q :=
  fun s hs ⟨⟨hL, hp⟩, hK⟩ => h hp s hs ⟨hL, hK⟩

theorem hoareG_exL {a : Act σ} {K : Nat} {MK : BitVec 64} {α : Type} {L : α → LocalsH → Prop}
    {p : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ x, HoareG σ X (PK a K MK (L x)) p Q) :
    HoareG σ X (PK a K MK (fun m => ∃ x, L x m)) p Q :=
  fun s hs ⟨⟨x, hx⟩, hK⟩ => h x s hs ⟨hx, hK⟩

/-- Arguments of a callee whose parameters are all `any`. -/
theorem hargs_any {a : Act σ} {args : List (ExpHOL 64)} {sg : Sig} (hps : ∀ pt ∈ sg.params, pt = .any)
    (hl : sg.params.length = args.length) {K : Nat} {L : LocalsH → Prop} :
    ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg.params vs ∧ (∀ x, ArgCells sg.params vs x → a.Foot x) ∧
          ∀ s' : State σ, True :=
  fun s _ _ Γ p _ _ _ vs hvs =>
    ⟨argsOK_any hps (by rw [hl, Bn2.evsLen hvs]), fun x hx => absurd hx (argCells_any hps),
      fun _ => trivial⟩

/-! ## Calls on block pointers -/

section calls
variable {a : Act σ} (ce : CI σ X a) (g : FG) (hbo : BO a (bs6 g) (K6 g))
include ce hbo

theorem callMzP {L : LocalsH → Prop} {x : String} {n : Nat} (hn : n ≤ 416)
    (hx : ∀ m, L m → ∃ w, LW m x w ∧ (w.toNat, 416) ∈ bs6 g) :
    HoareG σ X (PK a (K6 g) g.mkr L) (callD (nm "memzero") [lv (nm x), cw n])
      (SPK a (K6 g) g.mkr L) := by
  refine hoareG_callK ce.ha ce.hgrow ce.mz (by simp [Helpers.sigMemzero]) rfl ?_
  intro s _ hL Γ p he hh hK vs hvs
  obtain ⟨w, hw, hmem⟩ := hx _ hL
  rw [evs_cons (Lk.ev hw) (evs_cons (ev_cw s n) evs_nil)] at hvs
  cases hvs
  have hnW : (BitVec.ofNat 64 n).toNat = n := toNat_W (by omega)
  obtain ⟨h1, h2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK (b := w.toNat) (n := 416)
    (m := 1 * (BitVec.ofNat 64 n).toNat + 0) hmem (by rw [hnW]; omega) a.Cb
  exact ⟨argsOK_mz h1, fun y hy => h2 y (argCells_mz hy), fun _ => trivial⟩

theorem callMcP {L : LocalsH → Prop} {x y : String} {n : Nat} (hn : n ≤ 416)
    (hx : ∀ m, L m → ∃ w, LW m x w ∧ (w.toNat, 416) ∈ bs6 g)
    (hy : ∀ m, L m → ∃ v, Lk m y v) :
    HoareG σ X (PK a (K6 g) g.mkr L) (callD (nm "memcpy") [lv (nm x), lv (nm y), cw n])
      (SPK a (K6 g) g.mkr L) := by
  refine hoareG_callK ce.ha ce.hgrow ce.mc (by simp [Helpers.sigMemcpy]) rfl ?_
  intro s _ hL Γ p he hh hK vs hvs
  obtain ⟨w, hw, hmem⟩ := hx _ hL
  obtain ⟨v, hv⟩ := hy _ hL
  rw [evs_cons (Lk.ev hw) (evs_cons (Lk.ev hv) (evs_cons (ev_cw s n) evs_nil))] at hvs
  cases hvs
  have hnW : (BitVec.ofNat 64 n).toNat = n := toNat_W (by omega)
  obtain ⟨h1, h2⟩ := blk_of_bo ce.hgrow ce.ha.hord0 ce.hL0 hh hbo hK (b := w.toNat) (n := 416)
    (m := 1 * (BitVec.ofNat 64 n).toNat + 0) hmem (by rw [hnW]; omega) a.Cb
  refine ⟨?_, fun z hz => h2 z ?_, fun _ => trivial⟩
  · refine ⟨rfl, fun i pt w' hpt hw' => ?_⟩
    rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw' <;> subst hpt <;> subst hw'
    · exact ⟨w, BitVec.ofNat 64 n, rfl, rfl, h1⟩
    · trivial
    · trivial
  · obtain ⟨i, w', hw', h⟩ := hz
    rcases h with ⟨m, hn', -⟩ | ⟨j, c, d, z', hj, hz', ho⟩
    · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hn'
    · rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hj
      obtain ⟨rfl, rfl, rfl⟩ := hj
      simp [argW, wordOf, V] at hw' hz'
      subst hw'; subst hz'
      simpa [hnW] using ho

end calls

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.callMzP
#print axioms InitECandidate.Solver.MemSafe.Fq.callMcP
