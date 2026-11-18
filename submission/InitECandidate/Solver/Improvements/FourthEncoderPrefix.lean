import InitECandidate.Solver.Improvements.FourthEncoderKeysFacts
import InitECandidate.Solver.MemSafe.Helpers.GuestCtx
import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.MemSafe.Aw.Write
import InitECandidate.Solver.MemSafe.Struct.Eval
import InitECandidate.Solver.Band.Rules

/-! Typed prefix of the actual account encoder. It retains the original
callee costs and existing above-writer specifications; only the sorted-key
return count is passed into the bounded storage continuation. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthEncoderPrefix
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Aw
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers
variable {σ : Type}

/-- The two semantic facts used from the guest encoder; the concrete callee
supplies them from the existing typed encoder proofs. -/
structure PrefixFacts (a : AwE σ) : Prop where
  sortedKeys : ASp a guestCtx (AcceptedIvvhCalleeCore.nm "sorted_keys32")
    (fun vs s => ∃ T Tm : BitVec 64, vs = [.val (.word T), .val (.word Tm)] ∧
      Fits a.Γ0 (.ptr tHTl32) T ∧ s.memaddrs = guestCtx.memaddrs)
    (fun _ v _ => ∃ O N : BitVec 64, v = .rStruct [.val (.word O), .val (.word N)] ∧
      a.p0.hp ≤ O.toNat ∧ (N.toNat < 2^63 →
        N.toNat * 32 ≤ domTop + 64 ∧ O.toNat + N.toNat * 32 + 8 ≤ heapEnd))
  objectField : ∀ {t : State σ}, AwInv a t → ∀ {A : Obj}, A ∈ a.Γ0 → ∀ {k : Nat},
    (guestC.ty A.ty).minSz ≥ 8*k+8 →
    Fits a.Γ0 ((guestC.ty A.ty).slot k) (rd t.memory (A.cell k))

def Params (a : AwE σ) (s : State σ) : Prop :=
  ∃ dst addr ad tmp : BitVec 64,
    s.locals.lookup AcceptedBalEncodeCore.bDst = some (.val (.word dst)) ∧
    s.locals.lookup AcceptedBalEncodeCore.bAddr = some (.val (.word addr)) ∧
    s.locals.lookup AcceptedBalEncodeCore.bAd = some (.val (.word ad)) ∧
    s.locals.lookup AcceptedBalEncodeCore.bTmp = some (.val (.word tmp)) ∧
    Fits a.Γ0 (.nptr tAD) ad ∧ a.h0 ≤ dst.toNat ∧ dst.toNat + 16 ≤ 2^60
def Input (a : AwE σ) (s : State σ) : Prop := AwInv a s ∧ Params a s
def ScReady (a : AwE σ) (s : State σ) : Prop :=
  AwInv a s ∧ ∃ sc tmp : BitVec 64,
    s.locals.lookup AcceptedBalEncodeCore.bSc = some (.val (.word sc)) ∧
    s.locals.lookup AcceptedBalEncodeCore.bTmp = some (.val (.word tmp)) ∧ Fits a.Γ0 (.ptr tHTl32) sc
def First (a : AwE σ) (s : State σ) : Prop :=
  Input a s ∧ ∃ dst : BitVec 64,
    s.locals.lookup AcceptedBalEncodeCore.bDst = some (.val (.word dst)) ∧
    s.locals.lookup AcceptedBalEncodeCore.bP = some (.val (.word (dst + BitVec.ofNat 64 9)))

def keysStage : ProgHOL 64 :=
  .decCall AcceptedBalEncodeCore.bSlots (.comb [.one, .one]) (AcceptedIvvhCalleeCore.nm "sorted_keys32") [AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bSc, AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bTmp] AcceptedBalEncodeCore.storSec
def loadStage : ProgHOL 64 := .dec AcceptedBalEncodeCore.bSc .one (AcceptedBalEncodeCore.ld1 AcceptedBalEncodeCore.bAd 0) keysStage
def markStage : ProgHOL 64 := .decCall AcceptedBalEncodeCore.bMark .one (AcceptedIvvhCalleeCore.nm "heap_mark") [] loadStage
def afterWrite : ProgHOL 64 :=
  .seq (.assign .local AcceptedBalEncodeCore.bP (.op .add [AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bP, AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bW])) markStage
def writerStage : ProgHOL 64 :=
  .decCall AcceptedBalEncodeCore.bW .one (AcceptedIvvhCalleeCore.nm "rlp_encode_bytes") [AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bP, AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bAddr, AcceptedIvvhCalleeCore.cw 20] afterWrite
def prefixBody : ProgHOL 64 :=
  .dec AcceptedBalEncodeCore.bP .one (.op .add [AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bDst, AcceptedIvvhCalleeCore.cw 9]) writerStage
theorem body_identity : AcceptedBalEncodeCore.balBody = prefixBody := by rfl

def keysB : Nat := 1 + AcceptedBalEncodeCore.cK + FourthBalEncodeContinuation.storageCost
def markB : Nat := 1 + 0 + keysB
def prefixB : Nat := 1 + AcceptedBalEncodeCore.cB + markB

theorem params_update {a : AwE σ} {s st : State σ} {x : MlS} {value : ValueHOL 64}
    (hp : Params a s)
    (hx : x ≠ AcceptedBalEncodeCore.bDst ∧ x ≠ AcceptedBalEncodeCore.bAddr ∧ x ≠ AcceptedBalEncodeCore.bAd ∧ x ≠ AcceptedBalEncodeCore.bTmp) :
    Params a (setVarHOLFinite x value {st with locals := s.locals}) := by
  obtain ⟨dst, addr, ad, tmp, hd, ha, had, ht, hfit, hlo, hhi⟩ := hp
  refine ⟨dst, addr, ad, tmp, ?_, ?_, ?_, ?_, hfit, hlo, hhi⟩
  · simpa [setVarHOLFinite, FUPDATE, hx.1, Ne.symm hx.1] using hd
  · simpa [setVarHOLFinite, FUPDATE, hx.2.1, Ne.symm hx.2.1] using ha
  · simpa [setVarHOLFinite, FUPDATE, hx.2.2.1, Ne.symm hx.2.2.1] using had
  · simpa [setVarHOLFinite, FUPDATE, hx.2.2.2, Ne.symm hx.2.2.2] using ht

theorem input_restore {a : AwE σ} (hK : AwOK a) {s st : State σ} {x : MlS} {value : ValueHOL 64}
    (hp : Input a s) (ha : AwInv a st)
    (hx : x ≠ AcceptedBalEncodeCore.bDst ∧ x ≠ AcceptedBalEncodeCore.bAddr ∧ x ≠ AcceptedBalEncodeCore.bAd ∧ x ≠ AcceptedBalEncodeCore.bTmp) :
    Input a (setVarHOLFinite x value {st with locals := s.locals}) := by
  exact ⟨awInv_same hK ha rfl rfl rfl rfl, params_update hp.2 hx⟩

theorem keys_stage_cost {a : AwE σ} (hK : AwOK a) (hc : PrefixFacts a)
    (hcost : AcceptedBalEncodeCore.CalleeCosts σ guestCtx) :
    Inv.CostP σ guestCtx (ScReady a) keysStage keysB := by
  refine InitECandidate.Solver.Band.costP_decCall (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) hcost.sorted_keys32)
    (by intros; trivial) hc.sortedKeys ?_
  intro s hs hp vs hvs callee value st hR hctx hshape
  obtain ⟨hinv, sc, tmp, hsc, htmp, hfit⟩ := hp
  have heSc : ev s (AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bSc) = some (.val (.word sc)) := hsc
  have heTmp : ev s (AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bTmp) = some (.val (.word tmp)) := htmp
  have hvsEq : vs = [.val (.word sc), .val (.word tmp)] := by
    rw [evs_cons heSc (evs_cons heTmp evs_nil)] at hvs
    exact (Option.some.inj hvs).symm
  have hinvEntry : AwInv a (callEntryStateHOLFinite s callee) := awInv_same hK hinv rfl rfl rfl rfl
  have hpre : ∃ T Tm : BitVec 64, vs = [.val (.word T), .val (.word Tm)] ∧
      Fits a.Γ0 (.ptr tHTl32) T ∧ (callEntryStateHOLFinite s callee).memaddrs = guestCtx.memaddrs :=
    ⟨sc, tmp, hvsEq, hfit, hs.2.1⟩
  have hret := (hR hinvEntry hpre value rfl).2
  obtain ⟨O, N, rfl, hO, hN⟩ := hret
  have hcount := FourthEncoderKeysFacts.keysRet_count hK hO (N := N) (fun hs => (hN hs).2)
  refine (FourthBalEncodeContinuation.storage_cost hcost).pre fun t ht heq => ?_
  subst t
  refine ⟨O, N, ?_, fun hsign => Nat.le_trans (hcount hsign) (by decide)⟩
  simp [setVarHOLFinite, FUPDATE]

theorem load_stage_cost {a : AwE σ} (hK : AwOK a) (hc : PrefixFacts a)
    (hcost : AcceptedBalEncodeCore.CalleeCosts σ guestCtx) :
    Inv.CostP σ guestCtx (Input a) loadStage keysB := by
  refine Inv.costP_dec fun s hs hp value he hshape => ?_
  obtain ⟨hinv, dst, addr, ad, tmp, hd, ha, had, ht, hfit, hlo, hhi⟩ := hp
  obtain ⟨word, hword, hdom, rfl⟩ := Struct.ev_load1_inv he
  have heAd : ev s (AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bAd) = some (.val (.word ad)) := had
  have hc0 : ev s (AcceptedIvvhCalleeCore.cw 0) = some (.val (.word (BitVec.ofNat 64 0))) := rfl
  rw [ev_add2 heAd hc0] at hword
  cases hword
  have hsc : Fits a.Γ0 (.ptr tHTl32) (rd s.memory (ad + BitVec.ofNat 64 0)) := by
    rcases hfit with hnull | ⟨A, hA, hAb, hAt⟩
    · have := nullSafe_guestCtx _ (hs.2.1 ▸ hdom)
      have hz : (ad + BitVec.ofNat 64 0).toNat = ad.toNat := by simp
      unfold nullMax heapBase at *
      omega
    · have hfield := hc.objectField hinv hA (k := 0) (by rw [hAt]; decide)
      rw [hAt, show (guestC.ty tAD).slot 0 = .ptr tHTl32 from rfl] at hfield
      have hcell : A.cell 0 = ad + BitVec.ofNat 64 0 := by simp [Obj.cell, hAb]
      rw [hcell] at hfield
      exact hfield
  refine (keys_stage_cost hK hc hcost).pre fun t hctx heq => ?_
  subst t
  refine ⟨awInv_same hK hinv rfl rfl rfl rfl, _, tmp, ?_, ?_, hsc⟩
  · simp [setVarHOLFinite, FUPDATE]
  · simpa [setVarHOLFinite, FUPDATE, show AcceptedBalEncodeCore.bSc ≠ AcceptedBalEncodeCore.bTmp by decide] using ht

theorem mark_stage_cost {a : AwE σ} (hK : AwOK a) (hc : PrefixFacts a)
    (hcost : AcceptedBalEncodeCore.CalleeCosts σ guestCtx) :
    Inv.CostP σ guestCtx (Input a) markStage markB := by
  refine InitECandidate.Solver.Band.costP_decCall (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) hcost.heap_mark)
    (by intros; trivial) (asp_mark hK InitECandidate.Solver.SourceCost.guestCtx_code) ?_
  intro s hs hp vs hvs callee value st hR hctx hshape
  have hvs0 : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
  have hInv := (hR (awInv_same hK hp.1 rfl rfl rfl rfl) hvs0 value rfl).1
  exact (load_stage_cost hK hc hcost).pre fun t ht heq => by
    subst t
    exact input_restore hK hp hInv (by decide)

theorem after_write_cost {a : AwE σ} (hK : AwOK a) (hc : PrefixFacts a)
    (hcost : AcceptedBalEncodeCore.CalleeCosts σ guestCtx) :
    Inv.CostP σ guestCtx (Input a) afterWrite markB := by
  have hkeep : Hoare σ guestCtx (Input a)
      (.assign .local AcceptedBalEncodeCore.bP (.op .add [AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bP, AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bW]))
      (fun r t => r = none → Input a t) := by
    refine hoare_assign fun s hs hp value hv hvalid hr => ?_
    exact input_restore hK hp hp.1 (by decide)
  have hp := Inv.costP_seq (Inv.costP_of_cost (cost_assign .local AcceptedBalEncodeCore.bP
    (.op .add [AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bP, AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bW]))) hkeep (mark_stage_cost hK hc hcost)
  simpa only [afterWrite, Nat.zero_add] using hp

theorem writer_stage_cost {a : AwE σ} (hK : AwOK a) (hc : PrefixFacts a)
    (hcost : AcceptedBalEncodeCore.CalleeCosts σ guestCtx) :
    Inv.CostP σ guestCtx (First a) writerStage prefixB := by
  refine InitECandidate.Solver.Band.costP_decCall (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) hcost.rlp_encode_bytes)
    (by intros; trivial) (asp_writer hK
      (footRet_encode_bytesA InitECandidate.Solver.SourceCost.guestCtx_code alignedDom_guestCtx domBelow_guestCtx)) ?_
  intro s hs hp vs hvs callee value st hR hctx hshape
  obtain ⟨hinput, dst, hdst, hpword⟩ := hp
  obtain ⟨D, addr, ad, tmp, hD, ha, had, ht, hfit, hlo, hhi⟩ := hinput.2
  rw [hdst] at hD
  cases hD
  have heP : ev s (AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bP) = some (.val (.word (dst + BitVec.ofNat 64 9))) := hpword
  obtain ⟨arg, rest, hvs', hearg, herest⟩ := evs_cons_inv hvs
  rw [heP] at hearg
  cases hearg
  have hpNat : (dst + BitVec.ofNat 64 9).toNat = dst.toNat + 9 := by
    have h9 : (BitVec.ofNat 64 9).toNat = 9 := by decide
    rw [BitVec.toNat_add, h9, Nat.mod_eq_of_lt (by omega)]
  have hpre : PreW a vs := by
    refine ⟨dst + BitVec.ofNat 64 9, ?_, ?_, ?_⟩
    · rw [hvs']; rfl
    · rw [hpNat]; omega
    · rw [hpNat]; omega
  have hInv := (hR (awInv_same hK hinput.1 rfl rfl rfl rfl) hpre value rfl).1
  exact (after_write_cost hK hc hcost).pre fun t ht heq => by
    subst t
    exact input_restore hK hinput hInv (by decide)

theorem body_cost {a : AwE σ} (hK : AwOK a) (hc : PrefixFacts a)
    (hcost : AcceptedBalEncodeCore.CalleeCosts σ guestCtx) :
    Inv.CostP σ guestCtx (Input a) AcceptedBalEncodeCore.balBody prefixB := by
  rw [body_identity]
  refine Inv.costP_dec fun s hs hp value hv hshape => ?_
  obtain ⟨dst, addr, ad, tmp, hd, ha, had, ht, hfit, hlo, hhi⟩ := hp.2
  have heDst : ev s (AcceptedIvvhCalleeCore.lv AcceptedBalEncodeCore.bDst) = some (.val (.word dst)) := hd
  have hc9 : ev s (AcceptedIvvhCalleeCore.cw 9) = some (.val (.word (BitVec.ofNat 64 9))) := rfl
  rw [ev_add2 heDst hc9] at hv
  cases hv
  refine (writer_stage_cost hK hc hcost).pre fun t hctx heq => ?_
  subst t
  refine ⟨input_restore hK hp hp.1 (by decide), dst, ?_, ?_⟩
  · simpa [setVarHOLFinite, FUPDATE, show AcceptedBalEncodeCore.bP ≠ AcceptedBalEncodeCore.bDst by decide] using hd
  · simp [setVarHOLFinite, FUPDATE]

theorem prefixB_eq : prefixB = FourthBalEncodeContinuation.boundedCost := by
  unfold prefixB markB keysB FourthBalEncodeContinuation.boundedCost
    FourthBalEncodeContinuation.storageCost AcceptedBalEncodeCore.tailB AcceptedBalEncodeCore.keysCost AcceptedBalEncodeCore.wrapCost
  decide

#print axioms keys_stage_cost
#print axioms load_stage_cost
#print axioms body_cost
end FourthEncoderPrefix
