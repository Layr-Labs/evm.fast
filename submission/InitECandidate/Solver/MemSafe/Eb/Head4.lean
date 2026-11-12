import InitECandidate.Solver.MemSafe.Eb.Head3

/-!
# `execute_block`: the head, part 4 (the ledger `BoLed` and the steps after `memzero`)
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

/-- What the walk knows about `bo` while the head fills it. -/
structure BoLed (S0 S : FS) (Z : List MlS) (A : List (BitVec 64)) (w : BitVec 64) : Prop where
  gobj : S (Fct.gobj nmBo w tBO)
  obj : S (Fct.obj w tBO 88)
  prop : S (Fct.prop (∀ y : BitVec 64, (∃ f0, S0 f0 ∧ f0.reads y) → ¬ (w.toNat ≤ y.toNat ∧ y.toNat < w.toNat + 88)))
  rd : RdIn S0 A S
  tidy : Tidy Z S
  hz : gHeap ∉ Z
  safe : ∀ SF : Fct → Prop, (∀ f, S0 f → SF f) →
    (∀ b ty n, (ty = tBO ∨ ty = tBOS ∨ ty = tLSTh) → SF (Fct.obj b ty n)) → SF (Fct.gobj nmBo w tBO) →
    (∀ P, SF (Fct.prop P)) → (∀ a v, SF (Fct.cellv a v)) → ∀ f, S f → SF f
  solo : ∀ f, S f → f ≠ Fct.cellv (w + BitVec.ofNat 64 64) 0 → f.reads (w + BitVec.ofNat 64 64) →
    ∃ f0, S0 f0 ∧ f0.reads (w + BitVec.ofNat 64 64)

theorem boLed_adopt {S0 S : FS} {Z A w} (h : BoLed S0 S Z A w) (b : BitVec 64) (ty n : Nat)
    (hty : ty = tBO ∨ ty = tBOS ∨ ty = tLSTh) :
    BoLed S0 (fun f => S f ∨ AdoptNF S b ty n f) Z A w :=
  ⟨Or.inl h.gobj, Or.inl h.obj, Or.inl h.prop, rdIn_adopt h.rd b ty n, tidy_adopt h.tidy b ty n, h.hz,
    fun SF h0 hobj hg hp hc f hf => by
      rcases hf with hf | hf
      · exact h.safe SF h0 hobj hg hp hc f hf
      · rcases hf with rfl | ⟨b', ty', n', -, rfl⟩ | ⟨g', b', ty', -, rfl⟩ | rfl
        · exact hobj b ty n hty
        · exact hp _
        · exact hp _
        · exact hp _,
    fun f hf hne hr => by
      rcases hf with hf | hf
      · exact h.solo f hf hne hr
      · exact absurd hr (adoptNF_noread hf _)⟩

theorem boLed_add {S0 S : FS} {Z A w} (h : BoLed S0 S Z A w) (a v : BitVec 64)
    (ha : a ≠ w + BitVec.ofNat 64 64 ∨ (a = w + BitVec.ofNat 64 64 ∧ v = 0)) :
    BoLed S0 (fun f => S f ∨ f = Fct.cellv a v) Z (a :: A) w :=
  ⟨Or.inl h.gobj, Or.inl h.obj, Or.inl h.prop, rdIn_add h.rd a v,
    tidy_add h.tidy (f0 := Fct.cellv a v) ⟨fun _ _ _ h => (by cases h), fun _ _ h => (by cases h)⟩, h.hz,
    fun SF h0 hobj hg hp hc f hf => by
      rcases hf with hf | rfl
      · exact h.safe SF h0 hobj hg hp hc f hf
      · exact hc _ _,
    fun f hf hne hr => by
      rcases hf with hf | rfl
      · exact h.solo f hf hne hr
      · exfalso
        have hra : w + BitVec.ofNat 64 64 = a := hr
        rcases ha with ha | ⟨ha, hv⟩
        · exact ha hra.symm
        · subst hv; exact hne (by rw [ha])⟩

theorem boLed_obj {S0 S : FS} {Z A w} (h : BoLed S0 S Z A w) (b : BitVec 64) (ty n : Nat)
    (hty : ty = tBO ∨ ty = tBOS ∨ ty = tLSTh) :
    BoLed S0 (fun f => S f ∨ f = Fct.obj b ty n) Z A w :=
  ⟨Or.inl h.gobj, Or.inl h.obj, Or.inl h.prop, rdIn_noread h.rd _ (fun y h => h),
    tidy_add h.tidy (f0 := Fct.obj b ty n) ⟨fun _ _ _ h => (by cases h), fun _ _ h => (by cases h)⟩, h.hz,
    fun SF h0 hobj hg hp hc f hf => by
      rcases hf with hf | rfl
      · exact h.safe SF h0 hobj hg hp hc f hf
      · exact hobj b ty n hty,
    fun f hf hne hr => by
      rcases hf with hf | rfl
      · exact h.solo f hf hne hr
      · exact absurd hr (fun h => h)⟩

theorem boLed_hs1 {S0 : FS} {Z : List MlS} (hT : Tidy Z S0) (hz : gHeap ∉ Z) (w : BitVec 64) :
    BoLed S0 (HS1 S0 w) (nmBo :: Z) [] w :=
  ⟨hs1_gobj S0 w, hs1_obj S0 w, hs1_prop S0 w, rdIn_hs1 (rdIn_refl S0) w tBO 88 nmBo, tidy_hs1 hT w,
    by simp only [List.mem_cons, not_or]; exact ⟨by decide, hz⟩,
    fun SF h0 hobj hg hp hc f hf => by
      rcases hf with hf | hf | rfl
      · exact h0 f hf
      · rcases hf with rfl | ⟨b', ty', n', -, rfl⟩ | ⟨g', b', ty', -, rfl⟩ | rfl
        · exact hobj w tBO 88 (Or.inl rfl)
        · exact hp _
        · exact hp _
        · exact hp _
      · exact hg,
    fun f hf hne hr => by
      rcases hf with hf | hf | rfl
      · exact ⟨f, hf, hr⟩
      · exact absurd hr (adoptNF_noread hf _)
      · exact absurd hr (fun h => h)⟩

section h4
variable {E : EbE σ} {En : Env} {S0 S : FS} {Z : List MlS} {A : List (BitVec 64)} {w : BitVec 64}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `st (bo + off), x` with the continuation. -/
theorem st_bo_seq (h : BoLed S0 S Z A w) {off : Nat} {x : MlS} {xv : BitVec 64} {rest : ProgHOL 64}
    (hoff : off % 8 = 0) (hoff' : off + 8 ≤ 88) (hx : En x = some (.val (.word xv)))
    (hA : ∀ a ∈ A, a ≠ w + BitVec.ofNat 64 off)
    (hnext : Hoare σ guestCtx (PA E En (fun f => S f ∨ f = Fct.cellv (w + BitVec.ofNat 64 off) xv)) rest QT) :
    Hoare σ guestCtx (PA E En S) (.seq (.store (.op .add [gv nmBo, cw off]) (lv x)) rest) QT :=
  hseqN (hn_stBo (n := 88) h.gobj h.obj (Or.inr (Or.inl rfl)) hoff hoff' hx
    (frees_of h.obj le_rfl h.rd hA h.prop (by omega))) hnext

theorem st_alloc_nn (hQ : LocIns QT) (h : BoLed S0 S Z A w) {ntx0 : BitVec 64} (hEn : En (nm "ntx") = some (.val (.word ntx0)))
    (hnt : ntx0.toNat < 2 ^ 50) {rn : MlS} {k : ProgHOL 64}
    (hk : ∀ t : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word t)))
      (fun f => S f ∨ AdoptNF S t tBOS (16 * ntx0.toNat + 16) f)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "alloc")
      [.op .add [.panop .mul [lv (nm "ntx"), cw 16], cw 16]] k) QT := by
  have hnn := nn_toNat hnt
  refine hdecAllocAdopt (n := ntx0 * BitVec.ofNat 64 16 + BitVec.ofNat 64 16) (ty := tBOS)
    (locIns_resIns hQ _) (Or.inl rfl) (by rw [hnn]; omega) (by rw [hnn]; have : (guestC.ty tBOS).minSz = 16 := rfl; omega)
    (by rw [hnn]; omega) (fun s hs => evI_add (evI_mul (evI_lv_pa hs hEn) (evI_cw s 16)) (evI_cw s 16))
    (tidy_ne h.tidy h.hz).1 (tidy_ne h.tidy h.hz).2 ?_
  intro t
  rw [hnn]
  exact hk t

theorem st_alloc_128 (hQ : LocIns QT) (h : BoLed S0 S Z A w) {rn : MlS} {k : ProgHOL 64}
    (hk : ∀ t : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word t)))
      (fun f => S f ∨ AdoptNF S t tBOS 128 f)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "alloc") [.panop .mul [cw 8, cw 16]] k) QT := by
  have hn : (BitVec.ofNat 64 8 * BitVec.ofNat 64 16).toNat = 128 := by decide
  refine hdecAllocAdopt (n := BitVec.ofNat 64 8 * BitVec.ofNat 64 16) (ty := tBOS)
    (locIns_resIns hQ _) (Or.inl rfl) (by rw [hn]) (by rw [hn]; have : (guestC.ty tBOS).minSz = 16 := rfl; omega)
    (by rw [hn]; omega) (fun s hs => evI_mul (evI_cw s 8) (evI_cw s 16))
    (tidy_ne h.tidy h.hz).1 (tidy_ne h.tidy h.hz).2 ?_
  intro t
  rw [hn]
  exact hk t

end h4

end InitECandidate.Solver.MemSafe.Eb
