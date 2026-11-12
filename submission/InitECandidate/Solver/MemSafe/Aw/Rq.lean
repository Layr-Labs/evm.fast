import InitECandidate.Solver.MemSafe.Aw.Rl
import InitECandidate.Solver.MemSafe.Aw.Eer

set_option autoImplicit false

/-!
# `htr_requests` (target E)
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

def ldo (x : MlS) (c : Nat) : ExpHOL 64 := .load .one (.op .add [lv x, cw c])

def rqCall (k oe on sz oc : Nat) : ProgHOL 64 :=
  callD (nm "htr_request_list") [cw k, ldo rqN oe, ldo rqN on, cw sz, offX chN oc]

def rqBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall chN .one (nm "alloc") [.panop .mul [cw 5, cw 32]]
      (.seq (rqCall 0 0 8 192 0)
        (.seq (rqCall 1 16 24 76 32)
          (.seq (rqCall 2 32 40 116 64)
            (.seq (rqCall 3 48 56 184 96)
              (.seq (rqCall 4 64 72 68 128)
                (.seq (callD (nm "htr_pcontainer") [lv chN, cw 5, lv outN])
                  (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0))))))))))

theorem code_htr_requests : guestCode (nm "htr_requests") =
    some ([(rqN, .one), (outN, .one)], rqBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_requests =
      (nm "htr_requests", [(rqN, .one), (outN, .one)], rqBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 217) (by decide)) ⟨_, rfl⟩ h

theorem evs_five {s : State σ} {a b c d e : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b, c, d, e] = some vs) :
    ∃ v1 v2 v3 v4 v5, vs = [v1, v2, v3, v4, v5] ∧ ev s a = some v1 ∧ ev s b = some v2 ∧
      ev s c = some v3 ∧ ev s d = some v4 ∧ ev s e = some v5 := by
  obtain ⟨v1, vs1, rfl, h1, h2⟩ := evs_cons_inv h
  obtain ⟨v2, v3, v4, v5, rfl, h3, h4, h5, h6⟩ := evs_four h2
  exact ⟨v1, v2, v3, v4, v5, rfl, h1, h3, h4, h5, h6⟩

def FQ (a : AwE σ) (R O : BitVec 64) (m : Locals) : Prop :=
  m.lookup rqN = some (.val (.word R)) ∧ m.lookup outN = some (.val (.word O)) ∧
    Bd m chN a.h0 heapEnd ∧ MkB a.p0.hp markN m

theorem rq_step {a : AwE σ} (hK : AwOK a) {R O : BitVec 64}
    (hrl : ASp a X (nm "htr_request_list") (fun vs _ => OutAt 4 a.h0 vs) (fun _ _ _ => True))
    (k oe on sz oc : Nat) (hoc : oc < 2 ^ 20) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (FQ a R O)) (rqCall k oe on sz oc) (AQ a (FQ a R O) Ret) := by
  have hHE : heapEnd = 2952790016 := rfl
  unfold rqCall
  refine hoareG_callOK hK hrl ?_
  intro s hL vs hvs
  obtain ⟨Ch, hCh, c1, c2⟩ := hL.2.2.1
  obtain ⟨v1, v2, v3, v4, v5, rfl, e1, e2, e3, e4, e5⟩ := evs_five hvs
  rw [ev_offX _ hCh] at e5
  cases e5
  have hw : (Ch + BitVec.ofNat 64 oc).toNat = Ch.toNat + oc := toNat_addc (by omega)
  exact ⟨_, rfl, by rw [hw]; omega, by rw [hw]; omega⟩

theorem awSpec_htr_requests {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hRl : AWSpec σ X C H (nm "htr_request_list") [] (fun vs _ h0 => OutAt 4 h0 vs)
      (fun vs _ v _ => OutRes 4 vs v))
    (hPc : AWSpec σ X C H (nm "htr_pcontainer") [] (fun vs _ h0 => PcPre h0 vs)
      (fun vs _ v _ => OutRes 2 vs v)) :
    AWSpec σ X C H (nm "htr_requests") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 1) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_htr_requests (by decide) hl
  obtain ⟨R, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  have hrl := asp_of_aw hK hRl (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hpc := asp_of_aw hK hPc (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let LL : Locals → Prop := fun m => m.lookup rqN = some (.val (.word R)) ∧
    m.lookup outN = some (.val (.word O))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 1 [.val (.word R), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb⟩⟩)
    (fun _ _ _ _ h => h)
  unfold rqBody
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => LL m ∧ MkB p.hp markN m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2⟩,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s1
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := FQ a R O) (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_mul2 (ev_cw _ 5) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2,
      bd_new _ _ _ hq1 (by omega), mkb_upd (by decide) hL.2⟩
  intro s2
  refine hoareG_seqA (L2 := FQ a R O) (rq_step hK hrl 0 0 8 192 0 (by decide)) ?_
  refine hoareG_seqA (L2 := FQ a R O) (rq_step hK hrl 1 16 24 76 32 (by decide)) ?_
  refine hoareG_seqA (L2 := FQ a R O) (rq_step hK hrl 2 32 40 116 64 (by decide)) ?_
  refine hoareG_seqA (L2 := FQ a R O) (rq_step hK hrl 3 48 56 184 96 (by decide)) ?_
  refine hoareG_seqA (L2 := FQ a R O) (rq_step hK hrl 4 64 72 68 128 (by decide)) ?_
  refine hoareG_seqA (L2 := fun m => FQ a R O m ∧ O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK hpc ?_ ?_) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP3.2.2.1] at e3
    cases e3
    rw [ev_cw] at e2
    cases e2
    exact ⟨⟨O, rfl, ho1, ho2⟩, _, rfl, by simp⟩
  · intro s3 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hL.2.1] at e3
    cases e3
    exact ⟨hL, hRet O rfl⟩
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP3.2.1.2.2.2
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_requests
