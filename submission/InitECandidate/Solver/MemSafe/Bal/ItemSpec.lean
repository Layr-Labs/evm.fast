import InitECandidate.Solver.MemSafe.Bal.IdxStor
import InitECandidate.Solver.MemSafe.HtabEntries.Item

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- **A found item's key is a source key.** In a well-formed heap table `S` of `Γ`, the key bytes of a
live entry lie in objects the table owns (its key array); so for a key length `n ≤ htKL S.ty` and a
destination type `th ≠ S.ty` they form a `SrcKey`. -/
theorem item_srcKey {Γ : Gam} {s : State σ} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {S : Obj} (hw : tabW Γ s S) (hk : hkOf S.ty = .tab) (hheap : (guestC.ty S.ty).region = .heap)
    {I : BitVec 64} (hI : I.toNat < Spec.Inv.CNT s.memory S.base) {n th : Nat}
    (hn : n ≤ htKL S.ty) (hne : S.ty ≠ th) :
    SrcKey Γ (Spec.Inv.keyPtr s.memory S.base (Spec.Inv.ORD s.memory S.base I)) n th := by
  have hw' := hw
  obtain ⟨hS, hG, hwf, harr, hv, hkl⟩ := hw
  obtain ⟨hno, hreg⟩ := item_key_reg hwf hI
  have hKL60 : htKL S.ty ≤ 60 := htKL_le _
  have hkl' : (Spec.Inv.hdr s.memory S.base 0).toNat = htKL S.ty := by
    rw [hkl, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rw [hkl'] at hno hreg
  refine ⟨by omega, S, hS, hk, hne, fun a h1 h2 => ?_⟩
  have hlt : a < 2 ^ 64 := by omega
  have haB : (BitVec.ofNat 64 a).toNat = a := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt]
  have hr := hreg (BitVec.ofNat 64 a) (by rw [haB]; omega) (by rw [haB]; omega)
  obtain ⟨x, hx, hOwn, -, x1, x2⟩ := tab_obj hw' hk hr
  rw [haB] at x1 x2
  refine ⟨x, hx, ?_, x1, x2⟩
  rcases hOwn with h | h | ⟨h, h2⟩
  · exact Or.inl h
  · exact Or.inr h
  · exfalso
    have hxsc : (guestC.ty x.ty).region = .scratch := by rw [h]; decide
    have hxsp := (Struct.obj_bounds hord hL hx).2.2.2.2 hxsc
    have hShp := (Struct.obj_bounds hord hL hS).2.2.1 hheap
    have hpos := (hG.1 x hx).2.2.1
    obtain ⟨o1, o2, o3, o4, -⟩ := hord
    unfold Obj.lo Obj.hi at *
    have : S.base.toNat < S.base.toNat + S.size := by
      have := (hG.1 S hS).2.2.1; omega
    omega


def ItemPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ S ∈ Γ, hkOf S.ty = .tab ∧ (guestC.ty S.ty).region = .heap ∧ ∃ I : BitVec 64,
    vs = [.val (.word S.base), .val (.word I)]

def itemSg : Sig := ⟨[.any, .any], [], [], false⟩

def ItemPost (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ∀ a b c : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] →
    a ≠ 0 → ∀ S ∈ Γ', vs[0]? = some (.val (.word S.base)) → hkOf S.ty = .tab →
      (guestC.ty S.ty).region = .heap →
        Fits Γ' (valK S.ty) c ∧ ∀ n th, n ≤ htKL S.ty → S.ty ≠ th → SrcKey Γ' b n th

/-- **`htab_item(t, i)` on a heap table of `Γ`: a found key is a `SrcKey`.** Pure: nothing is written. -/
theorem sumSpec_htab_item_src :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_item") itemSg ItemPre
      (fun _ _ _ _ => False) ItemPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨hm, hgl, hd, hbe, hRet⟩ := funSpec_item_j (σ := σ) hF.hX vs body callee rs hl s hs hloc r hr
  obtain ⟨p, hp, hargs'⟩ := hargs
  obtain ⟨S0, hS0, hk0, hh0, I0, rfl⟩ := hpre
  have hgs : (evaluateHOLFiniteState s body).2.globals = s.globals := AllocImpl.hfm_ext (funext hgl)
  have hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ s p (fun _ => False) Γ (evaluateHOLFiniteState s body).2 :=
    Struct.trk_congr hF.hH (Struct.trk_refl hG hp) hm hgs hd hbe
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := itemSg) (PWs := fun a => ProtCell guestC Γ a ∧ False)
    (vs := [.val (.word S0.base), .val (.word I0)]) (r := r) hT hp (fun a h => absurd h id)
    (fun _ _ _ => Struct.newFresh_refl Γ p p) (fun p hp w' hw' i rt w'' hi => by simp [itemSg] at hi)
  refine ⟨Γ, p, p', hc, fun v hv a b c hvabc ha S hS hS0b hkS hhS => ?_⟩
  have hHi := hRet v hv S0.base I0 rfl
  rw [hvabc] at hHi
  obtain ⟨hI, hb, hc'⟩ := hHi a b c rfl ha
  simp only [List.getElem?_cons_zero, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hS0b
  obtain ⟨q, hq, hord, hL, -, -, -, hW⟩ := id hG
  rw [hp] at hq
  cases hq
  have hSS : S0 = S := by
    exact base_eq (gamOK_of_layout hL) hS hS0 hS0b
  subst hSS
  have hw : tabW Γ s S0 := htabHooks_guestR.get _ s S0 hkS (hW S0 hS)
  refine ⟨?_, fun n th hn hne => ?_⟩
  · rw [hc']
    exact hw.2.2.2.2.1 _ (item_leafVal hI)
  · rw [hb]
    exact item_srcKey hord hL hw hkS hhS hI hn hne

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_htab_item_src
