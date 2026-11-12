import InitECandidate.Solver.MemSafe.Aw.SrtMain

set_option autoImplicit false

/-!
# Target G, part 6: `sorted_keys32`
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- `asp_of_aw` for an `AWSpecG` whose precondition holds for every `Γ`. -/
theorem asp_of_awG {a : AwE σ} (hK : AwOK a) {f : MlS} {gw' : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hf : AWSpecG σ X a.C a.H f gw' Pre Post) (hgw : ∀ g, g ∈ gw' → g ∈ a.gw)
    {Pre' : List (ValueHOL 64) → State σ → Prop}
    (hP : ∀ vs s Γ, Pre' vs s → Pre vs s Γ a.h0) :
    ASp a X f Pre' (fun _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hinv hP' v hv
  subst hv
  have h1 := hf vs body callee rs hl s hs hloc _ hr v rfl
  have hinv0 := hinv
  obtain ⟨Γ', p', hG, hp, e1, e2, e3, e4, -⟩ := hinv0
  have hle : a.h0 ≤ p'.hp := by
    have := hK.hle
    unfold Ptrs.Mono at e4
    omega
  have hPre := hP vs s Γ' hP'
  obtain ⟨Γ'', p'', c1, c2, c3, c4, c5, c6, c7, c8, c9⟩ := h1 Γ' a.h0 p' hG hp e3 hK.h8 hK.hbase hle hPre
  exact ⟨awInv_aw hK hinv hgw (fun Γ1 p1 hG1 hp1 hB1 h81 hle1 => by
    obtain ⟨Γ2, p2, d1, d2, d3, d4, d5, d6, d7, d8, -⟩ := hf vs body callee rs hl s hs hloc _ hr v rfl
      Γ1 a.h0 p1 hG1 hp1 hB1 h81 hK.hbase hle1 (hP vs s Γ1 hP')
    exact ⟨Γ2, p2, d1, d2, d3, d4, d5, d6, d7, d8⟩), trivial⟩

def skBody : ProgHOL 64 :=
  .decCall kN (.comb [.one, .one]) (nm "htab_keys") [lv tN]
    (.seq (callD (nm "sort_elems") [.rfield 0 (lv kN), .rfield 1 (lv kN), cw 32, cw 2, lv tmpN])
      (.return (lv kN)))

theorem code_sorted_keys32 : guestCode (nm "sorted_keys32") =
    some ([(tN, .one), (tmpN, .one)], skBody, .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_sorted_keys32 =
      (nm "sorted_keys32", [(tN, .one), (tmpN, .one)], skBody, .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 431) (by decide)) ⟨_, rfl⟩ h

theorem ldW_callEntry {s : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {A w : BitVec 64}
    (h : LdW s A w) : LdW (callEntryStateHOLFinite s callee) A w := h

def SkSort (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ O N Tm : BitVec 64, vs = [.val (.word O), .val (.word N), .val (.word (BitVec.ofNat 64 32)),
      .val (.word (BitVec.ofNat 64 2)), .val (.word Tm)] ∧ a.h0 ≤ O.toNat ∧ (N.toNat < 2 ^ 63 → N.toNat ≤ domTop ∧
        N.toNat * 32 ≤ domTop + 64 ∧ O.toNat + N.toNat * 32 ≤ scratchEnd)

theorem awSpec_sorted_keys32 {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hHK : AWSpec σ X C H (nm "htab_keys") []
      (fun vs s _ => ∀ T : BitVec 64, argW vs 0 = some T → LdW s (T + BitVec.ofNat 64 8) 32)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost 32 vs p v))
    (hSort : AWSpecG σ X C H (nm "sort_elems") [] (fun vs s Γ h0 => SrtPre C vs s Γ h0)
      (fun _ _ _ _ => True)) :
    AWSpec σ X C H (nm "sorted_keys32") []
      (fun vs s _ => ∀ T : BitVec 64, argW vs 0 = some T → LdW s (T + BitVec.ofNat 64 8) 32)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost 32 vs p v) := by
  refine awSpec_of_hoareG2 (PV := HkPost 32) hH hTS hAG ?_
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
      obtain ⟨O, N, h1, h2, h3⟩ := hpost p1 hp1
      exact ⟨O, N, h1, le_trans hle1 h2, h3⟩)
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
    exact ldW_callEntry hLd
  · intro s vs v st hs hL hvs hI hRet hsh
    obtain ⟨O, N, hv, o1, o2⟩ := hRet
    subst hv
    have key : HoareG σ X (APre a (fun m => m.lookup kN = some (.rStruct [.val (.word O), .val (.word N)]) ∧
        Lk tmpN Tm m)) (.seq (callD (nm "sort_elems") [.rfield 0 (lv kN), .rfield 1 (lv kN), cw 32,
        cw 2, lv tmpN]) (.return (lv kN)))
        (AQ a (fun _ => False) (HkPost 32 [.val (.word T), .val (.word Tm)] p)) := by
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
        refine ⟨O, N, rfl, o1, fun hN => ?_⟩
        obtain ⟨b1, b2⟩ := o2 hN
        rw [h32] at b1 b2
        exact ⟨by rw [h32]; exact b1, by omega⟩
    exact hoareG_pre key (fun t _ ht => by
      subst ht
      refine ⟨awInv_same hK hI rfl rfl rfl rfl, lookup_update_self _ _ _, ?_⟩
      show Lk tmpN Tm (s.locals.update (kN, ValueHOL.rStruct [.val (.word O), .val (.word N)]))
      exact lk_updo (by decide) hL.2)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_sorted_keys32
