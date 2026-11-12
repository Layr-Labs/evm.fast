import InitECandidate.Solver.MemSafe.Aw.Sk

set_option autoImplicit false

/-!
# `htab_keys` and `sorted_keys32` with the stride as a state fact

The stride cell of a well-formed table is at least its key length (`Sep`), so no stride
precondition is needed: `HkPre vs s`: the table's stride word `T + 8` lies in the domain and is at
least `32`; `HkPost' vs p v`: `v = <out, n>` with `HkPost S0` for some `S0 ≥ 32`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

theorem mem_wd (m : Mem) (a : BitVec 64) : m a = .word (rd m a) := by
  unfold rd
  cases h : m a
  rfl

def HkPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∀ T : BitVec 64, argW vs 0 = some T → s.memaddrs (T + BitVec.ofNat 64 8) ∧
    32 ≤ (rd s.memory (T + BitVec.ofNat 64 8)).toNat

def HkPost' (vs : List (ValueHOL 64)) (p : Ptrs) (v : ValueHOL 64) : Prop :=
  ∃ S0 : BitVec 64, 32 ≤ S0.toNat ∧ HkPost S0 vs p v

theorem awSpec_htab_keys' {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpec σ X C H (nm "htab_keys") [] (fun vs s _ => HkPre vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost' vs p v) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle hPre
  have hl' := hl
  rw [hC] at hl'
  obtain ⟨-, -, A, hvs, hA', hla⟩ := lookupCode_one code_htab_keys hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hA'
  have hT0 : argW vs 0 = some T := by rw [hvs]; rfl
  obtain ⟨hd, h32⟩ := hPre T hT0
  obtain ⟨Γ', p', c1, c2, c3, c4, c5, c6, c7, c8, c9⟩ :=
    awSpec_htab_keys hC hA hT hH hTS hAG (rd s.memory (T + BitVec.ofNat 64 8)) vs body callee rs hl
      s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle (fun T' hT'' => by
        have e : T = T' := Option.some.inj (hT0.symm.trans hT'')
        subst e
        unfold LdW
        rw [ev_load_one_of (by simp [ev, evalHOLExact]) hd]
        rw [mem_wd s.memory (T + BitVec.ofNat 64 8)])
  refine ⟨Γ', p', c1, c2, c3, c4, c5, c6, c7, c8, fun p2 hp2 => ?_⟩
  exact ⟨_, h32, c9 p2 hp2⟩

theorem awSpec_sorted_keys32' {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hHK : AWSpec σ X C H (nm "htab_keys") [] (fun vs s _ => HkPre vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost' vs p v))
    (hSort : AWSpecG σ X C H (nm "sort_elems") [] (fun vs s Γ h0 => SrtPre C vs s Γ h0)
      (fun _ _ _ _ => True)) :
    AWSpec σ X C H (nm "sorted_keys32") [] (fun vs s _ => HkPre vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost' vs p v) := by
  refine awSpec_of_hoareG2 (PV := HkPost') hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_sorted_keys32 (by decide) hl
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Tm, rfl⟩ := val_of_shapeEq_one hB'
  have hLd := hPre T rfl
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  have hd : domTop = 1099511627776 := by decide
  have hhk := asp_of_aw2 hK hHK (fun g hg => absurd hg (by simp))
    (Ret := fun vs v t => ∃ O N : BitVec 64, v = .rStruct [.val (.word O), .val (.word N)] ∧
      a.p0.hp ≤ O.toNat ∧ (N.toNat < 2 ^ 63 → N.toNat * (32 : BitVec 64).toNat ≤ domTop + 64 ∧
        O.toNat + N.toNat * (32 : BitVec 64).toNat + 8 ≤ heapEnd))
    (fun vs s v t ⟨p1, hp1, hle1⟩ hpost => by
      obtain ⟨S0, hS0, O, N, h1, h2, h3⟩ := hpost p1 hp1
      have hmul : N.toNat * 32 ≤ N.toNat * S0.toNat := Nat.mul_le_mul_left _ hS0
      have h32' : (32 : BitVec 64).toNat = 32 := by decide
      refine ⟨O, N, h1, le_trans hle1 h2, fun hN => ?_⟩
      have := h3 hN
      rw [h32']
      omega)
  have hsort := asp_of_awG hK hSort (fun g hg => absurd hg (by simp)) (Pre' := fun vs _ => SkSort a vs)
    (fun vs s Γ' ⟨O, N, Tm', hvs, ho, hbig⟩ P N' E hP hN hE hNb => by
      subst hvs
      have e1 : O = P := Option.some.inj hP
      have e2 : N = N' := Option.some.inj hN
      have e3 : BitVec.ofNat 64 32 = E := Option.some.inj hE
      subst e1 e2 e3
      have h32 : (BitVec.ofNat 64 32).toNat = 32 := by decide
      obtain ⟨b1, b2, b3⟩ := hbig hNb
      refine ⟨b1, by rw [h32]; exact b2, by rw [h32]; exact b3, fun x hx => Or.inl ?_⟩
      obtain ⟨hx1, hx2, hx3⟩ := hx
      have h8 : a.h0 % 8 = 0 := hK.h8
      show a.h0 ≤ x.toNat
      omega)
  have h32 : (32 : BitVec 64).toNat = 32 := by decide
  have hse : heapEnd ≤ scratchEnd := by decide
  let LL : Locals → Prop := fun m => Lk tN T m ∧ Lk tmpN Tm m
  unfold skBody
  refine hoareG_decCallAsP hK hhk (P := fun t => t = s0) (L := LL) (Lout := fun _ => True)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP
    subst hP
    exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb⟩⟩
  · intro s hs hP vs hvs callee T' hT'
    subst hP
    have hs1 : s.locals.lookup tN = some (.val (.word T)) := by rw [hloc]; exact hla
    rw [evs_cons (ev_lw hs1) evs_nil] at hvs
    cases hvs
    have := Option.some.inj hT'
    subst this
    exact hLd
  · intro s vs v st hs hL hvs hI hRet hsh
    obtain ⟨O, N, hv, o1, o2⟩ := hRet
    subst hv
    have key : HoareG σ X (APre a (fun m => m.lookup kN = some (.rStruct [.val (.word O), .val (.word N)]) ∧
        Lk tmpN Tm m)) (.seq (callD (nm "sort_elems") [.rfield 0 (lv kN), .rfield 1 (lv kN), cw 32,
        cw 2, lv tmpN]) (.return (lv kN)))
        (AQ a (fun _ => False) (HkPost' [.val (.word T), .val (.word Tm)] p)) := by
      have hle : a.h0 ≤ a.p0.hp := hK.hle
      refine hoareG_seqA (L2 := fun m => m.lookup kN = some (.rStruct [.val (.word O), .val (.word N)]) ∧
        Lk tmpN Tm m) (hoareG_callAs hK hsort ?_ (fun _ _ _ _ hL' _ _ => hL')) ?_
      · intro s1 hs1 hP1 vs1 hvs1 callee1
        obtain ⟨v1, v2, v3, v4, v5, rfl, f1, f2, f3, f4, f5⟩ := evs_five hvs1
        rw [ev_rfield (show ev s1 (lv kN) = some (.rStruct [.val (.word O), .val (.word N)]) from hP1.2.1) 0] at f1
        rw [ev_rfield (show ev s1 (lv kN) = some (.rStruct [.val (.word O), .val (.word N)]) from hP1.2.1) 1] at f2
        rw [ev_cw] at f3 f4
        rw [ev_lw hP1.2.2] at f5
        simp at f1 f2
        cases f1
        cases f2
        cases f3
        cases f4
        cases f5
        refine ⟨O, N, Tm, rfl, by omega, fun hN => ?_⟩
        obtain ⟨b1, b2⟩ := o2 hN
        rw [h32] at b1 b2
        refine ⟨by omega, b1, by omega⟩
      · refine hoareG_returnA hK (fun s1 hs1 hL1 v hv => ?_)
        rw [show ev s1 (lv kN) = some (.rStruct [.val (.word O), .val (.word N)]) from hL1.1] at hv
        cases hv
        refine ⟨32, by decide, O, N, rfl, o1, fun hN => ?_⟩
        obtain ⟨b1, b2⟩ := o2 hN
        rw [h32] at b1 b2
        exact ⟨by rw [h32]; exact b1, by omega⟩
    exact hoareG_pre key (fun t _ ht => by
      subst ht
      refine ⟨awInv_same hK hI rfl rfl rfl rfl, lookup_update_self _ _ _, ?_⟩
      show Lk tmpN Tm (s.locals.update (kN, ValueHOL.rStruct [.val (.word O), .val (.word N)]))
      exact lk_updo (by decide) hL.2)


end InitECandidate.Solver.MemSafe.BalEnc

#print axioms InitECandidate.Solver.MemSafe.BalEnc.awSpec_sorted_keys32'
