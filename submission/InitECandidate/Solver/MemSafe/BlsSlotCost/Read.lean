import InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeG1
import InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeG2
import InitECandidate.Solver.MemSafe.PairCost.FromBeCallRead
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Read
variable {σ : Type}
def NoHit (slot : MlS) (s : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ A : BitVec 64, s.locals.lookup slot = some (.val (.word A)) ∧ ¬ Hit guestCtx.memaddrs A
def Reject (slot : MlS) (p : ProgHOL 64) : Prop :=
 Hoare σ guestCtx (NoHit slot) p (fun r _ => r ≠ none ∧ r ≠ some .continue)
lemma reject_dec {slot rn : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
 (hne : rn ≠ slot) (hk : Reject (σ := σ) slot k) : Reject (σ := σ) slot (.dec rn sh e k) := by
 apply InitECandidate.Solver.Spec.hoare_dec
 intro s hs hp v hv hsh
 apply InitECandidate.Solver.Spec.hoare_pre hk
 intro t ht heq
 subst t
 obtain ⟨A,hA,hno⟩ := hp
 exact ⟨A,by simpa [setVarHOLFinite,FUPDATE,hne] using hA,hno⟩
lemma true_spec (f : MlS) : FunSpec σ guestCtx f (fun _ _ _ _ => True) := by
 intro vs body callee rs hl s hs hloc r hr
 trivial
lemma reject_decCall {slot rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
 (hne : rn ≠ slot) (hk : Reject (σ := σ) slot k) : Reject (σ := σ) slot (.decCall rn sh f args k) := by
 refine hoare_decCallS (true_spec f) ?_
 intro s hs hp vs hvs callee v st hR hctx hshape
 apply InitECandidate.Solver.Spec.hoare_pre hk
 intro t ht heq
 subst t
 obtain ⟨A,hA,hno⟩ := hp
 exact ⟨A,by simpa [setVarHOLFinite,FUPDATE,hne] using hA,hno⟩
lemma reject_seq_left {slot : MlS} {a b : ProgHOL 64} (ha : Reject (σ := σ) slot a) :
 Reject (σ := σ) slot (.seq a b) := by
 refine InitECandidate.Solver.Spec.hoare_seq ha (fun _ _ _ _ _ h => h) ?_
 intro s hs hp ht
 exact False.elim (hp.1 rfl)
lemma reject_seq_right {slot : MlS} {a b : ProgHOL 64}
 (hnc : NoCont σ a) (hkeep : Keeps σ slot a) (hb : Reject (σ := σ) slot b) :
 Reject (σ := σ) slot (.seq a b) := by
 have ha : Hoare σ guestCtx (NoHit slot) a (fun r t => r ≠ some .continue ∧ (r = none → NoHit slot t)) := by
  intro s hs hp ht
  refine ⟨hnc s,?_⟩
  intro hn
  obtain ⟨A,hA,hno⟩ := hp
  exact ⟨A,(hkeep s (Or.inl hn)).trans hA,hno⟩
 refine InitECandidate.Solver.Spec.hoare_seq ha (fun r t ht hr htr hp => ⟨hr,hp.1⟩) ?_
 exact InitECandidate.Solver.Spec.hoare_pre hb (fun s hs hp => hp.2 rfl)
lemma reject_from_be {slot rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} :
 Reject (σ := σ) slot (.decCall rn sh (nm "u256_from_be") [.var .local slot,.const 32] k) := by
 unfold Reject
 refine InitECandidate.Solver.Spec.hoare_conseq (InitECandidate.Solver.MemSafe.PairCost.Read.from_be_call_no_hit (σ := σ) (e := .var .local slot) (rn := rn) (sh := sh) (k := k)) ?_ ?_
 · intro s hs hp
   obtain ⟨A,hA,hno⟩ := hp
   exact ⟨A,hA,by rw [hs.2.1]; exact hno⟩
 · intro r t ht htr hfalse
   exact False.elim hfalse

theorem reject_decode {slot rn f : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
 (hf : FunSpec σ guestCtx f (fun vs s r _ => ∀ (A : BitVec 64) (v : ValueHOL 64),
   vs.head? = some (.val (.word A)) → r = .returned v → Hit s.memaddrs A)) :
 Reject (σ := σ) slot (.decCall rn sh f [.var .local slot,e] k) := by
 refine hoare_decCallS hf ?_
 intro s hs hp vs hvs callee v st hR hctx hshape
 obtain ⟨A,hA,hno⟩ := hp
 obtain ⟨v0,vs0,rfl,hv0,ht0⟩ := evs_cons_inv hvs
 have he : ev s (.var .local slot) = some (.val (.word A)) := hA
 rw [he] at hv0
 cases hv0
 have hh : Hit s.memaddrs A := hR A v rfl rfl
 rw [hs.2.1] at hh
 exact False.elim (hno hh)

def beLeafB (slot f : MlS) (args : List (ExpHOL 64)) : Bool :=
 match args with
 | [.var .local arg,.const n] => decide (f = nm "u256_from_be" ∧ arg = slot ∧ n = 32)
 | _ => false
lemma beLeaf_sound {slot rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
 (h : beLeafB slot f args = true) : Reject (σ := σ) slot (.decCall rn sh f args k) := by
 unfold beLeafB at h
 split at h
 · rename_i arg n
   obtain ⟨hf,ha,hn⟩ := of_decide_eq_true h
   subst f; subst arg; subst n
   exact reject_from_be
 · contradiction

def decodeLeafB (slot f : MlS) (args : List (ExpHOL 64)) : Bool :=
 match args with
 | [.var .local arg,e] => decide (arg = slot ∧
    (f = nm "g1_decode" ∨ f = nm "g2_decode" ∨ f = nm "bls_fp_decode64"))
 | _ => false
lemma decodeLeaf_sound {slot rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
 (h : decodeLeafB slot f args = true) : Reject (σ := σ) slot (.decCall rn sh f args k) := by
 unfold decodeLeafB at h
 split at h
 · rename_i arg e
   obtain ⟨ha,hf⟩ := of_decide_eq_true h
   subst arg
   rcases hf with rfl | rfl | rfl
   · exact reject_decode InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeG1.read_spec
   · exact reject_decode InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeG2.read_spec
   · exact reject_decode InitECandidate.Solver.MemSafe.BlsSlotCost.DecodeFp.read_spec
 · contradiction

def leafB (slot f : MlS) (args : List (ExpHOL 64)) : Bool :=
 beLeafB slot f args || decodeLeafB slot f args
lemma leaf_sound {slot rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
 (h : leafB slot f args = true) : Reject (σ := σ) slot (.decCall rn sh f args k) := by
 rcases Bool.or_eq_true_iff.mp h with h | h
 · exact beLeaf_sound h
 · exact decodeLeaf_sound h

def readSlotB (slot : MlS) : ProgHOL 64 → Bool
 | .seq a b => if readSlotB slot a then true else noContB a && keepsB slot a && readSlotB slot b
 | .ite _ a b => readSlotB slot a && readSlotB slot b
 | .dec rn _ _ k => decide (rn ≠ slot) && readSlotB slot k
 | .decCall rn _ f args k => if leafB slot f args then true else decide (rn ≠ slot) && readSlotB slot k
 | _ => false

theorem readSlotB_sound (slot : MlS) : ∀ p, readSlotB slot p = true → Reject (σ := σ) slot p
 | .seq a b,h => by
   by_cases ha : readSlotB slot a = true
   · exact reject_seq_left (readSlotB_sound slot a ha)
   · simp only [readSlotB,ha,Bool.false_eq_true,if_false,Bool.and_eq_true] at h
     exact reject_seq_right (noContB_sound _ h.1.1) (keepsB_sound _ _ h.1.2) (readSlotB_sound slot b h.2)
 | .ite c a b,h => by
   simp only [readSlotB,Bool.and_eq_true] at h
   have hh := h
   apply InitECandidate.Solver.Spec.hoare_ite
   · exact InitECandidate.Solver.Spec.hoare_pre (readSlotB_sound slot a hh.1) (fun s hs hp => hp.1)
   · exact InitECandidate.Solver.Spec.hoare_pre (readSlotB_sound slot b hh.2) (fun s hs hp => hp.1)
 | .dec rn sh e k,h => by
   simp only [readSlotB,Bool.and_eq_true] at h
   have hh := h
   exact reject_dec (of_decide_eq_true hh.1) (readSlotB_sound slot k hh.2)
 | .decCall rn sh f args k,h => by
   by_cases hl : leafB slot f args = true
   · exact leaf_sound hl
   · simp only [readSlotB,hl,Bool.false_eq_true,if_false,Bool.and_eq_true] at h
     exact reject_decCall (of_decide_eq_true h.1) (readSlotB_sound slot k h.2)
 | .skip,h | .tick,h | .break,h | .continue,h | .annot _ _,h | .assign _ _ _,h
 | .primitive _ _ _,h | .store _ _,h | .store32 _ _,h | .storeByte _ _,h
 | .extCall _ _ _ _ _,h | .raise _ _,h | .return _,h | .shMemLoad _ _ _ _,h
 | .shMemStore _ _ _,h | .while _ _,h | .call _ _ _,h => by contradiction
#print axioms readSlotB_sound
end InitECandidate.Solver.MemSafe.BlsSlotCost.Read
