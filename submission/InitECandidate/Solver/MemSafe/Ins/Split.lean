import InitECandidate.Solver.MemSafe.Ins.LeafFn

set_option autoImplicit false

/-!
# `_split_extension`: helpers and code

* `ite_val` / `ite_valL`: `if x <cmp> k` on a local with known value.
* `ev_childAddrE`, `ev_childAddrI`, `childSt_G`: the child store `st br + 32 + 8 * idx, v` into a fresh
  branch, with the index a byte (nibble) given by a hypothesis.
* `ldb_lt16`: a byte of an `NIn` slice is a nibble.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem ite_val {P : State σ → Prop} {kv : List (MlS × BitVec 64)} {x : MlS} {W : BitVec 64} {k : Nat}
    {o : Cmp} {a b : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : (x, W) ∈ kv) (hP : ∀ s, P s → LKV kv s.locals)
    (ha : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W (BitVec.ofNat 64 k) = true → HoareG σ X P a Q)
    (hb : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W (BitVec.ofNat 64 k) = false → HoareG σ X P b Q) :
    HoareG σ X P (.ite (.cmp o (lv x) (cw k)) a b) Q := by
  have hev : ∀ s, P s → ev s (.cmp o (lv x) (cw k)) = some (.val (.word
      (if Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W (BitVec.ofNat 64 k) then 1 else 0))) :=
    fun s hs => ev_cmp (ev_lw (hP s hs _ hx)) (ev_cw _ k)
  refine hoareG_ite ?_ ?_
  · by_cases h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W (BitVec.ofNat 64 k) = true
    · exact hoareG_pre (ha h) (fun s _ h => h.1)
    · exact hoareG_false fun s _ ⟨hs, w, hw, hw0⟩ => by
        rw [hev s hs] at hw; simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        subst hw; simp [h] at hw0
  · by_cases h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o W (BitVec.ofNat 64 k) = true
    · exact hoareG_false fun s _ ⟨hs, hw⟩ => by
        rw [hev s hs] at hw; simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        simp [h] at hw
    · exact hoareG_pre (hb (by simpa using h)) (fun s _ h => h.1)

theorem ite_valL {P : State σ → Prop} {kv : List (MlS × BitVec 64)} {x : MlS} {W : BitVec 64} {k : Nat}
    {o : Cmp} {a b : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : (x, W) ∈ kv) (hP : ∀ s, P s → LKV kv s.locals)
    (ha : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o (BitVec.ofNat 64 k) W = true → HoareG σ X P a Q)
    (hb : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o (BitVec.ofNat 64 k) W = false → HoareG σ X P b Q) :
    HoareG σ X P (.ite (.cmp o (cw k) (lv x)) a b) Q := by
  have hev : ∀ s, P s → ev s (.cmp o (cw k) (lv x)) = some (.val (.word
      (if Flapjack.Compiler.Encoders.Asm.wordCmpHOL o (BitVec.ofNat 64 k) W then 1 else 0))) :=
    fun s hs => ev_cmp (ev_cw _ k) (ev_lw (hP s hs _ hx))
  refine hoareG_ite ?_ ?_
  · by_cases h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o (BitVec.ofNat 64 k) W = true
    · exact hoareG_pre (ha h) (fun s _ h => h.1)
    · exact hoareG_false fun s _ ⟨hs, w, hw, hw0⟩ => by
        rw [hev s hs] at hw; simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        subst hw; simp [h] at hw0
  · by_cases h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o (BitVec.ofNat 64 k) W = true
    · exact hoareG_false fun s _ ⟨hs, hw⟩ => by
        rw [hev s hs] at hw; simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        simp [h] at hw
    · exact hoareG_pre (hb (by simpa using h)) (fun s _ h => h.1)

/-- `br + 32 + 8 * ld8 ei`. -/
def childAddrE (br : MlS) (ei : ExpHOL 64) : ExpHOL 64 :=
  .op .add [lv br, cw 32, .panop .mul [.loadByte ei, cw 8]]

/-- `br + 32 + 8 * idx` (the index in a local). -/
def childAddrI (br idx : MlS) : ExpHOL 64 :=
  .op .add [lv br, cw 32, .panop .mul [lv idx, cw 8]]

theorem ev_childAddrE {s : State σ} {br : MlS} {ei : ExpHOL 64} {B A : BitVec 64}
    (hb : s.locals.lookup br = some (.val (.word B)))
    (h : ev s (childAddrE br ei) = some (.val (.word A))) :
    ∃ w : BitVec 64, ev s (.loadByte ei) = some (.val (.word w)) ∧ A = B + (32 + w * 8) := by
  unfold childAddrE at h
  obtain ⟨vs, hvs⟩ := ev_op_evs h
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨v3, vs3, rfl, h3, -⟩ := evs_cons_inv hvs2
  obtain ⟨vm, hvm⟩ := ev_panop_evs h3
  obtain ⟨u1, us1, rfl, hu1, -⟩ := evs_cons_inv hvm
  obtain ⟨w, rfl, -⟩ := ev_loadByte_word hu1
  refine ⟨w, hu1, ?_⟩
  rw [ev_add3 (ev_lw hb) (ev_cw s 32) (ev_mul2 hu1 (ev_cw s 8))] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  rw [← h]
  simp

theorem ev_childAddrI {s : State σ} {br idx : MlS} {B I A : BitVec 64}
    (hb : s.locals.lookup br = some (.val (.word B))) (hi : s.locals.lookup idx = some (.val (.word I)))
    (h : ev s (childAddrI br idx) = some (.val (.word A))) : A = B + (32 + I * 8) := by
  have : ev s (childAddrI br idx) = some (.val (.word (B + (32 + I * 8)))) := by
    unfold childAddrI
    rw [ev_add3 (ev_lw hb) (ev_cw s 32) (ev_mul2 (ev_lw hi) (ev_cw s 8))]
    simp
  rw [this] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h.symm

/-- A byte of an `NIn` slice (the index expression evaluating to `np + pl`) is a nibble. -/
theorem ldb_lt16 {Γ : Gam} {s : State σ}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s) {np nl pl : BitVec 64}
    (h : NIn Γ np nl) (hp : pl.toNat < nl.toNat) {ei : ExpHOL 64} {v : ValueHOL 64}
    (hA : ev s ei = some (.val (.word (np + pl)))) (hv : ev s (.loadByte ei) = some v) :
    ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat < 16 := by
  have hn := nibble_of_nIn hG h (k := pl.toNat) hp
  rw [BitVec.ofNat_toNat, BitVec.setWidth_eq] at hn
  exact loadByte_lt16 hA hn hv

/-- **The child store** `st br + 32 + 8 * idx, v` into a fresh branch `B`. -/
theorem childSt_G {sg : Sig} {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {kv : List (MlS × BitVec 64)} {br v : MlS} {B V : BitVec 64} {ea : ExpHOL 64}
    (hbr : (br, B) ∈ kv) (hv : (v, V) ∈ kv)
    {EΓ : Gam → Prop}
    (hEn : ∀ Γ, EΓ Γ → (∃ o ∈ Γ, o.base = B ∧ o.ty = Types.tNBRANCH) ∧ Fits Γ Types.nodeU V)
    (hA : ∀ (s : State σ) (Γ : Gam) (A : BitVec 64), LKV kv s.locals →
      G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → EΓ Γ → ev s ea = some (.val (.word A)) →
      ∃ w : BitVec 64, w.toNat < 16 ∧ A = B + (32 + w * 8))
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ))
      (.store ea (lv v))
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ) Rv) := by
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0 with hadef
  refine gp_stWX ha (L := LKV kv) (E := fun Γ _ _ => EΓ Γ) (E' := fun Γ _ _ => EΓ Γ)
    (fun s v' hL hv' => ⟨V, by rw [ev_lw (hL _ hv)] at hv'; exact (Option.some.inj hv').symm⟩) ?_
    (fun s Γ q A V' _ _ hE _ _ => hE)
  intro s Γ q A V' hL hh hE hAe he
  obtain ⟨w, hlt, hAw⟩ := hA s Γ A hL hh.1 hE hAe
  have hVW : V' = V := by
    rw [ev_lw (hL _ hv)] at he; simpa using he.symm
  obtain ⟨⟨o, ho, hob, hot⟩, hfit⟩ := hEn Γ hE
  obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
  have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hLy.1 o ho).2.2.2.1
  obtain ⟨hs1, hs2⟩ := nbranch_slot hot hsz (j := 4 + w.toNat) (by omega) (by omega)
  refine ⟨o, ho, 4 + w.toNat, hs1, hs2, ?_, ?_⟩
  · rw [hAw]; unfold Obj.cell; rw [hob]
    have hw8 : (BitVec.ofNat 64 (8 * (4 + w.toNat))) = 32 + w * 8 := by
      apply BitVec.eq_of_toNat_eq
      simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
      have h32 : (32 : BitVec 64).toNat = 32 := rfl
      have h8 : (8 : BitVec 64).toNat = 8 := rfl
      rw [h32, h8]
      omega
    rw [hw8]
  · show Fits Γ ((Types.guestC.ty o.ty).slot (4 + w.toNat)) V'
    rw [nbranch_child hot (by omega) (by omega)]
    rw [hVW]; exact hfit

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.ite_val
#print axioms InitECandidate.Solver.MemSafe.Ins.ite_valL
#print axioms InitECandidate.Solver.MemSafe.Ins.ev_childAddrE
#print axioms InitECandidate.Solver.MemSafe.Ins.ev_childAddrI
#print axioms InitECandidate.Solver.MemSafe.Ins.ldb_lt16
#print axioms InitECandidate.Solver.MemSafe.Ins.childSt_G
