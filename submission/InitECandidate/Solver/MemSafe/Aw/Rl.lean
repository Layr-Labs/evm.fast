import InitECandidate.Solver.MemSafe.Aw.Loop

set_option autoImplicit false

/-!
# `htr_request_list` (target E)
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
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

def kindN : MlS := nm "kind"
def rlSzN : MlS := nm "sz"

def rlArg : ExpHOL 64 := .op .add [lv pN, .panop .mul [lv iN, lv rlSzN]]

def rlIte (c : Nat) (f : MlS) : ProgHOL 64 :=
  .ite (.cmp .equal (lv kindN) (cw c)) (callD f [rlArg, rootsE]) .skip

def rlLoop : ProgHOL 64 :=
  .seq (rlIte 0 (nm "htr_deposit"))
    (.seq (rlIte 1 (nm "htr_wdreq"))
      (.seq (rlIte 2 (nm "htr_cons"))
        (.seq (rlIte 3 (nm "htr_bdep"))
          (.seq (rlIte 4 (nm "htr_bexit"))
            (.assign .local iN (.op .add [lv iN, cw 1]))))))

def rlBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall rootsN .one (nm "alloc") [.op .add [.panop .mul [lv nN, cw 32], cw 32]]
      (.dec iN .one (cw 0)
        (.seq (.while (.cmp .less (lv iN) (lv nN)) rlLoop)
          (.seq (callD (nm "htr_plist_chunks") [lv rootsN, lv nN, lv nN, lv outN])
            (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0)))))))

theorem code_htr_request_list : guestCode (nm "htr_request_list") =
    some ([(kindN, .one), (pN, .one), (nN, .one), (rlSzN, .one), (outN, .one)], rlBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_request_list =
      (nm "htr_request_list", [(kindN, .one), (pN, .one), (nN, .one), (rlSzN, .one), (outN, .one)],
        rlBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 216) (by decide)) ⟨_, rfl⟩ h

def RPm (K P N Z O : BitVec 64) (m : Locals) : Prop :=
  m.lookup kindN = some (.val (.word K)) ∧ m.lookup pN = some (.val (.word P)) ∧
    m.lookup nN = some (.val (.word N)) ∧ m.lookup rlSzN = some (.val (.word Z)) ∧
    m.lookup outN = some (.val (.word O))

/-- The invariant inside one iteration, after `j` of the five conditionals. -/
def MjL (a : AwE σ) (K P N Z O : BitVec 64) (j : Nat) (m : Locals) : Prop :=
  RPm K P N Z O m ∧ MkB a.p0.hp markN m ∧ Bd m rootsN a.h0 heapEnd ∧
    ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧ I.toNat + 1 < 2 ^ 63 ∧
      (K.toNat < 5 → I.toNat * 32 ≤ domTop + 64) ∧
      (K.toNat < j → (I.toNat + 1) * 32 ≤ domTop + 64)

theorem rl_step {a : AwE σ} (hK : AwOK a) {K P N Z O : BitVec 64} (j : Nat) (hj : j < 5)
    {f : MlS}
    (hf : ASp a X f (fun vs _ => OutAt 1 a.h0 vs) (fun vs v _ => OutRes 1 vs v))
    {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (MjL a K P N Z O j)) (rlIte j f)
      (AQ a (MjL a K P N Z O (j + 1)) Ret) := by
  have hHE : heapEnd = 2952790016 := rfl
  have hd : domTop = 1099511627776 := by decide
  have hKj : (BitVec.ofNat 64 j).toNat = j := by simp; omega
  unfold rlIte
  refine hoareG_iteC ?_ ?_
  · refine hoareG_callAsP hK hf
      (L := fun m => MjL a K P N Z O j m ∧ K = BitVec.ofNat 64 j) ?_ ?_ ?_
    · intro s hs hP
      obtain ⟨w, hw, hw0⟩ := hP.2
      exact ⟨hP.1.1, hP.1.2, eq_of_cond hP.1.2.1.1 hw hw0⟩
    · intro s hs hP vs hvs callee
      obtain ⟨w, hw, hw0⟩ := hP.2
      have hL := hP.1.2
      have hKe := eq_of_cond hL.1.1 hw hw0
      obtain ⟨Rt, hRt, r1, r2⟩ := hL.2.2.1
      obtain ⟨I, hI, i1, i2, i3⟩ := hL.2.2.2
      have hKt : K.toNat = j := by rw [hKe]; exact hKj
      have hb := i2 (by omega)
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      obtain ⟨hev, hwn⟩ := ev_rootsE hRt hI hb r2
      rw [hev] at e2
      cases e2
      exact ⟨_, rfl, by rw [hwn]; omega, by rw [hwn]; omega⟩
    · intro s vs v st hL hvs hRet
      obtain ⟨hL, hKe⟩ := hL
      obtain ⟨Rt, hRt, r1, r2⟩ := hL.2.2.1
      obtain ⟨I, hI, i1, i2, i3⟩ := hL.2.2.2
      have hKt : K.toNat = j := by rw [hKe]; exact hKj
      have hb := i2 (by omega)
      obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      obtain ⟨hev, hwn⟩ := ev_rootsE hRt hI hb r2
      rw [hev] at e2
      cases e2
      have hpost := hRet _ rfl
      refine ⟨hL.1, hL.2.1, hL.2.2.1, I, hI, i1, i2, fun hlt => ?_⟩
      by_cases hlj : K.toNat < j
      · exact i3 hlj
      · rw [hwn] at hpost
        omega
  · refine hoareG_pre (hoareG_skipA (L := fun m => MjL a K P N Z O j m ∧ K ≠ BitVec.ofNat 64 j) ?_)
      (fun s _ h => ⟨h.1.1, h.1.2, ne_of_cond0 h.1.2.1.1 h.2⟩)
    intro m ⟨hL, hKe⟩
    obtain ⟨I, hI, i1, i2, i3⟩ := hL.2.2.2
    refine ⟨hL.1, hL.2.1, hL.2.2.1, I, hI, i1, i2, fun hlt => ?_⟩
    have hne : K.toNat ≠ j := fun h => hKe (BitVec.eq_of_toNat_eq (by rw [hKj]; exact h))
    exact i3 (by omega)

def RJ (a : AwE σ) (K P N Z O : BitVec 64) (m : Locals) : Prop :=
  RPm K P N Z O m ∧ MkB a.p0.hp markN m ∧ Bd m rootsN a.h0 heapEnd ∧
    ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧ I.toNat < 2 ^ 63 ∧
      (K.toNat < 5 → I.toNat * 32 ≤ domTop + 64)

theorem awSpec_htr_request_list {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hD0 : AWSpec σ X C H (nm "htr_deposit") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hD1 : AWSpec σ X C H (nm "htr_wdreq") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hD2 : AWSpec σ X C H (nm "htr_cons") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hD3 : AWSpec σ X C H (nm "htr_bdep") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hD4 : AWSpec σ X C H (nm "htr_bexit") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hPl : AWSpec σ X C H (nm "htr_plist_chunks") [] (fun vs _ h0 => OutAt 3 h0 vs)
      (fun vs _ v _ => OutRes 3 vs v)) :
    AWSpec σ X C H (nm "htr_request_list") [] (fun vs _ h0 => OutAt 4 h0 vs)
      (fun vs _ v _ => OutRes 4 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 4) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Cc, Dd, Ee, rfl, hA', hB', hC', hD', hE', hla, hlb, hlc, hld, hle⟩ :=
    lookupCode_five code_htr_request_list (by decide) hl
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨Z, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hE'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  have hd : domTop = 1099511627776 := by decide
  have f0 := asp_of_aw hK hD0 (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have f1 := asp_of_aw hK hD1 (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have f2 := asp_of_aw hK hD2 (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have f3 := asp_of_aw hK hD3 (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have f4 := asp_of_aw hK hD4 (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have hpl := asp_of_aw hK hPl (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  refine hoareG_conseq (P := APre a (RPm K P N Z O))
    (Q := AQ a (fun _ => True) (OutRes 4 [.val (.word K), .val (.word P), .val (.word N),
      .val (.word Z), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb, hlc, hld, hle⟩⟩)
    (fun _ _ _ _ h => h)
  unfold rlBody
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => RPm K P N Z O m ∧ MkB p.hp markN m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2.2.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2.2.2.2⟩,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s1
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := fun m => (RPm K P N Z O m ∧ MkB p.hp markN m) ∧ Bd m rootsN h0 heapEnd)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hP.2.1.2.2.1) (ev_cw _ 32)) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2.2.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2.2.2.2⟩,
      mkb_upd (by decide) hL.2⟩, bd_new _ _ _ hq1 (by omega)⟩
  intro s2
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s3 hs3 hL3 v3 hv3 hsh3
  rw [ev_cw] at hv3
  cases hv3
  refine hoareG_preA (L' := RJ a K P N Z O) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL3.1.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL3.1.1.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL3.1.1.2.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL3.1.1.2.2.2.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL3.1.1.2.2.2.2⟩,
      mkb_upd (by decide) hL3.1.2, bd_upd (by decide) hL3.2, BitVec.ofNat 64 0,
      lookup_update_self _ _ _, by simp, fun _ => by simp⟩)
  refine hoareG_seqA (L2 := RJ a K P N Z O)
    (hoareG_whileA hK (J := RJ a K P N Z O) ?_ (fun s _ h _ => h)) ?_
  · refine hoareG_loopPre (iN' := iN) (nN' := nN) ?_ ?_
    · have chain : HoareG σ X (APre a (MjL a K P N Z O 0)) rlLoop
          (AQ a (RJ a K P N Z O) (OutRes 4 [.val (.word K), .val (.word P), .val (.word N),
            .val (.word Z), .val (.word O)])) := by
        unfold rlLoop
        refine hoareG_seqA (rl_step hK 0 (by decide) f0) (hoareG_seqA (rl_step hK 1 (by decide) f1)
          (hoareG_seqA (rl_step hK 2 (by decide) f2) (hoareG_seqA (rl_step hK 3 (by decide) f3)
            (hoareG_seqA (rl_step hK 4 (by decide) f4) ?_))))
        refine hoareG_assignA hK fun s7 _ hL7 v7 hv7 => ?_
        obtain ⟨I, hI, i1, i2, i4⟩ := hL7.2.2.2
        rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv7
        cases hv7
        have hI2 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc (by omega)
        refine ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL7.1.1,
          by rw [lookup_update_ne _ _ (by decide)]; exact hL7.1.2.1,
          by rw [lookup_update_ne _ _ (by decide)]; exact hL7.1.2.2.1,
          by rw [lookup_update_ne _ _ (by decide)]; exact hL7.1.2.2.2.1,
          by rw [lookup_update_ne _ _ (by decide)]; exact hL7.1.2.2.2.2⟩,
          mkb_upd (by decide) hL7.2.1, bd_upd (by decide) hL7.2.2.1, I + BitVec.ofNat 64 1, lookup_update_self _ _ _,
          by rw [hI2]; omega, fun h => by rw [hI2]; exact i4 (by omega)⟩
      refine hoareG_pre chain (fun s _ h => ⟨h.1, ?_⟩)
      obtain ⟨⟨hR, hM, hBd, I, hI, i1, i3⟩, I', hI', i2⟩ := h.2
      rw [hI] at hI'
      cases hI'
      exact ⟨hR, hM, hBd, I, hI, i2, i3, fun h => absurd h (by omega)⟩
    · intro m hm
      obtain ⟨I, hI, i1, i2⟩ := hm.2.2.2
      exact ⟨I, N, hI, hm.1.2.2.1, i1⟩
  -- plist_chunks
  refine hoareG_seqA (L2 := fun m => RJ a K P N Z O m ∧ O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK hpl ?_ ?_) ?_
  · intro s4 hs4 hP4 vs hvs callee
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hP4.2.1.2.2.2.2] at e4
    cases e4
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s4 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    rw [ev_lw hL.1.2.2.2.2] at e4
    cases e4
    exact ⟨hL, hRet O rfl⟩
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
  · intro s5 hs5 hP5 vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP5.2.1.2.1
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_request_list
