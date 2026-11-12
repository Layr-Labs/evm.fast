import InitECandidate.Solver.MemSafe.Aw.Eh
import InitECandidate.Solver.MemSafe.Aw.Rcpt

set_option autoImplicit false

/-!
# `block_rlp_length` as an above-writer (target D)

`mark = heap_mark(); he = encode_header(hdr); heap_release(mark);` and then a pure computation
(`PureB`): it calls only `rlp_bytes_encoded_len`, `rlp_list_header_len`, `withdrawal_rlp_len`.
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

def hdrN : MlS := nm "hdr"
def plN2 : MlS := nm "pl"
def heN : MlS := nm "he"

/-- The pure tail of `block_rlp_length`, read off the code. -/
def blTail (b : ProgHOL 64) : ProgHOL 64 :=
  match b with
  | .decCall _ _ _ _ (.decCall _ _ _ _ (.seq _ t)) => t
  | _ => .skip

def blBody (t : ProgHOL 64) : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall heN (.comb [.one, .one]) (nm "encode_header") [lv hdrN]
      (.seq (callD (nm "heap_release") [lv markN]) t))

def blT : ProgHOL 64 := blTail (fnEntry Guest.Software.guestFn_block_rlp_length).2.2.1

theorem code_block_rlp_length : guestCode (nm "block_rlp_length") =
    some ([(hdrN, .one), (plN2, .one)], blBody blT, .one) := by
  have h : fnEntry Guest.Software.guestFn_block_rlp_length =
      (nm "block_rlp_length", [(hdrN, .one), (plN2, .one)], blBody blT, .one) := by
    unfold blT blBody
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 862) (by decide)) ⟨_, rfl⟩ h

def pureS3 : List MlS := [nm "rlp_be_len", nm "rlp_header_len", nm "rlp_list_header_len",
  nm "rlp_word_encoded_len", nm "rlp_bytes_encoded_len", nm "withdrawal_rlp_len"]

theorem blT_pure : PureB pureS3 blT = true := by
  unfold blT pureS3
  cbv

theorem pureSpecs_S3 (hC : X.code.lookup = guestCode) : PureSpecs σ X pureS3 := by
  intro f hf
  simp only [pureS3, List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨_, footRet_rlp_be_len hC⟩
  · exact ⟨_, footRet_header_len hC⟩
  · exact ⟨_, footRet_list_header_len hC⟩
  · exact ⟨_, footRet_rlp_word_encoded_len hC⟩
  · exact ⟨_, footRet_rlp_bytes_encoded_len hC⟩
  · exact ⟨_, footRet_withdrawal_rlp_len hC⟩

/-- A pure program leaves the invariant. -/
theorem hoareG_pureA {a : AwE σ} (hK : AwOK a) {S : List MlS} (hS : PureSpecs σ X S)
    {L : Locals → Prop} {p : ProgHOL 64} (hp : PureB S p = true) :
    HoareG σ X (APre a L) p (AQ a (fun _ => True) (fun _ => True)) := by
  intro s hs hP hg
  have h := hoareG_pure hS (s0 := s) p hp s hs (lpre_init trivial) hg
  obtain ⟨⟨⟨hgl, hmod⟩, hn, hr⟩, hnb⟩ := h
  have hmem : (s.evaluateHOLFiniteState p).2.memory = s.memory :=
    funext fun x => hmod x (fun h => h.elim)
  have hI := awInv_same hK hP.1 hmem hgl (memaddrs_preserved s p) (Spec.Inv.be_preserved s p)
  exact ⟨hnb, fun _ => ⟨hI, trivial⟩, fun v hv => ⟨hI, trivial⟩⟩

theorem awSpec_block_rlp_length {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hEnc : AWSpec σ X C H (nm "encode_header") [] (fun _ _ _ => True) (fun _ _ _ _ => True)) :
    AWSpec σ X C H (nm "block_rlp_length") [] (fun _ _ _ => True) (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  have hbody := lookupCode_body' code_block_rlp_length hl
  subst hbody
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  refine hoareG_conseq (P := APre a (fun _ => True)) (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, trivial⟩) (fun _ _ _ _ h => h)
  unfold blBody
  refine hoareG_decCallAs' hK (asp_mark hK hC) (Lk := MkB p.hp markN) (L' := fun _ _ => True)
    ?_ ?_ ?_ (fun _ _ _ _ => trivial)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s
  refine hoareG_decCallAs' hK (asp_of_aw hK hEnc (fun g hg => absurd hg (by simp))
    (fun _ _ _ _ _ => trivial)) (Lk := MkB p.hp markN) (L' := fun _ _ => True)
    (fun _ _ _ _ _ _ => trivial) (fun s vs v st hL hvs hRet hsh => mkb_upd (by decide) hL) ?_
    (fun _ _ _ _ => trivial)
  intro s2
  refine hoareG_seqA (L2 := fun _ => True)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ _ _ _ => trivial)) ?_
  · intro s3 hs3 hP3 vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP3.2
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_pureA hK (pureSpecs_S3 hC) blT_pure

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_block_rlp_length
