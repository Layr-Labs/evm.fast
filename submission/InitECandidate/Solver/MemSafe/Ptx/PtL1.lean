import InitECandidate.Solver.MemSafe.Ptx.PtD21

/-!
# F3e: loop helpers (`hn_stFBg`: a store into a fresh block with a state predicate; comparison lemmas)
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

/-- **A store of one word into a fresh block, with a predicate on the memory.** -/
theorem hn_stFBg {E : PtE σ} {En : Env} {S : FS} {a e : ExpHOL 64} {wa x : BitVec 64} {N off : Nat}
    {R R' : State σ → Prop}
    (hfb : S (Fct.fbuf wa N)) (hprop : S (Fct.prop (BlkP wa N)))
    (ha : ∀ s : State σ, PA E En S s → EvI s a (.val (.word (wa + BitVec.ofNat 64 off))))
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word x)))
    (hoff : off % 8 = 0) (hk : off + 8 ≤ N) {rl : List Fct} (hrd : RdIn S rl)
    (hrl : ∀ s : State σ, PA E En S s → ∀ f ∈ rl, ∀ y, f.reads y → y ≠ wa + BitVec.ofNat 64 off)
    (hRR : ∀ s : State σ, PA E En S s → R s →
      R' { s with memory := fun a => if a = wa + BitVec.ofNat 64 off then HolWordLab.word x else s.memory a }) :
    Hoare σ guestCtx (fun s => PA E En S s ∧ R s) (.store a e) (fun r t => r = none ∧ PA E En S t ∧ R' t) := by
  refine hoare_store fun s hs ⟨hpa, hR⟩ w' v mem hw hv hmem => ?_
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  have hw' : w' = wa + BitVec.ofNat 64 off := by simpa using ha s hpa _ hw
  have hv' : v = .val (.word x) := he s hpa v hv
  subst hw' hv'
  obtain ⟨hn, hnin, hfr⟩ := fbuf_cellS hL hfb hprop hoff hk
  obtain ⟨hmod, -⟩ := Helpers.stores_mod hmem
  have hr' : PtRun D E.Γ0 E.s0 E.p0 Γ { s with memory := mem } p :=
    ptRun_store_fresh hr (R := fun a => ∃ j, j < (flattenHOL (.val (.word x) : ValueHOL 64)).length ∧
        a = wa + BitVec.ofNat 64 off + BitVec.ofNat 64 (8 * j))
      hmod rfl rfl rfl (by
        rintro a ⟨j, hj, rfl⟩
        have : j = 0 := by simpa [flattenHOL] using hj
        subst this
        simpa using hnin)
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  refine ⟨rfl, ⟨⟨D, Γ, p, hr', hD, ?_⟩, hlk⟩, hRR s hpa hR⟩
  have hstep : StepD Γ p s Γ p { s with memory := fun a => if a = wa + BitVec.ofNat 64 off then HolWordLab.word x else s.memory a } :=
    ⟨ptRun_ptrs hr, ptRun_ptrs hr', ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, ptRun_G hr, ptRun_G hr'⟩
  have hdis := rd_disj hr hL hrd hnin (hrl s hpa)
  refine holds_step hstep (ptRun_ord0 hr) ?_ (fun _ _ _ => rfl) hL
  intro f hf y hy
  have := hdis f hf y hy
  show (if y = wa + BitVec.ofNat 64 off then HolWordLab.word x else s.memory y) = s.memory y
  simp [this]

theorem cond_lt_true {s : State σ} {x y : MlS} {a b : BitVec 64}
    (hx : s.locals.lookup x = some (.val (.word a))) (hy : s.locals.lookup y = some (.val (.word b)))
    (ha : a.toNat < 2 ^ 63) (hb : b.toNat < 2 ^ 63)
    (h : CondTrue s (.cmp .less (lv x) (lv y))) : a.toNat < b.toNat := by
  have h1 := Rec.cmp_true (ev_lv_eq hx) (ev_lv_eq hy) h
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess] at h1
  have ha' : a.toNat < 9223372036854775808 := by omega
  have hb' : b.toNat < 9223372036854775808 := by omega
  simpa [ha', hb'] using h1

theorem cond_lt_false {s : State σ} {x y : MlS} {a b : BitVec 64}
    (hx : s.locals.lookup x = some (.val (.word a))) (hy : s.locals.lookup y = some (.val (.word b)))
    (ha : a.toNat < 2 ^ 63) (hb : b.toNat < 2 ^ 63)
    (h : ev s (.cmp .less (lv x) (lv y)) = some (.val (.word 0))) : ¬ a.toNat < b.toNat := by
  obtain ⟨a', b', ha, hb, hf⟩ := cmp_false h
  rw [ev_lv_eq hx] at ha
  rw [ev_lv_eq hy] at hb
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha hb
  subst ha hb
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess] at hf
  have ha' : a.toNat < 9223372036854775808 := by omega
  have hb' : b.toNat < 9223372036854775808 := by omega
  simpa [ha', hb'] using hf

theorem bv_mul8 {iv : BitVec 64} (h : iv.toNat < 2 ^ 58) :
    (iv + BitVec.ofNat 64 1) * BitVec.ofNat 64 8 = BitVec.ofNat 64 (8 * (iv.toNat + 1)) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul, BitVec.toNat_add]
  simp only [BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := 1) (by norm_num), Nat.mod_eq_of_lt (a := 8) (by norm_num),
    Nat.mod_eq_of_lt (a := iv.toNat + 1) (by omega), Nat.mod_eq_of_lt (a := (iv.toNat + 1) * 8) (by omega),
    Nat.mod_eq_of_lt (a := 8 * (iv.toNat + 1)) (by omega)]
  omega

theorem bv_mul24 {iv : BitVec 64} (h : iv.toNat < 2 ^ 58) :
    iv * BitVec.ofNat 64 24 = BitVec.ofNat 64 (24 * iv.toNat) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul]
  simp only [BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := 24) (by norm_num), Nat.mod_eq_of_lt (a := iv.toNat * 24) (by omega),
    Nat.mod_eq_of_lt (a := 24 * iv.toNat) (by omega)]
  omega

theorem bv_succ {iv : BitVec 64} (h : iv.toNat < 2 ^ 58) : (iv + BitVec.ofNat 64 1).toNat = iv.toNat + 1 := by
  rw [BitVec.toNat_add]
  simp only [BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (a := 1) (by norm_num), Nat.mod_eq_of_lt (a := iv.toNat + 1) (by omega)]

end InitECandidate.Solver.MemSafe.Ptx
