import InitECandidate.Solver.MemSafe.Shards.BaseHtab
import InitECandidate.Solver.MemSafe.Shards.BaseHelpers
import InitECandidate.Solver.MemSafe.Integ.DecodeAccount

/-!
# The fold's base with the helper entries, and mid steps (ms-integ)

* `baseWTab := helperBase ++ baseHCTab`: the hash-table base (`BaseHtab.lean`) and the helper
  entries that need only the base (`helperTab` of `BaseHelpers.lean`, non-growing instances).
  `baseWTab_sound` needs the context bound `DomLow X` (`domLow_guestCtx`).
* **Mid steps** (the analogue of the cost table's manual entries): after a shard, hand entries
  whose soundness follows from summaries already in the table are appended. `mid_step` is the
  fold rule; `ctab_get` extracts a summary of the table so far by position (the generator
  `research/tools/memsafe/gen/Gen7.lean` emits the positions, checked by `decide` / `rfl`).
* The mid groups: `midRls` (`rlp_list_to_slices`), `midSha` (`sha256`), `midUm`
  (`u256_to_be_min`), `midFe` (`fe_neg`, `fe_add`, `fe_sub`, `fe_mul_small`), `midRmd`
  (`ripemd160`), `midDA` (`decode_account_from_leaf`, `Integ/DecodeAccount.lean`), each with its soundness theorem taking the callee summaries (signatures as
  the checker accepts them, `grows = false`, no capabilities).

Only the non-growing instances are listed: a `grows = false` entry fits wherever the growing
one does (`findSig`), so the growing instances would never be selected.
-/

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack.Pancake.PanLang (MlS)

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-! ## Fold rules -/

/-- An entry of a sound table, by position. -/
theorem ctab_get {C : Cfg} {tab : CTab} (ht : CTabSound σ X C H tab) (i : Nat)
    (hi : i < tab.length) {f : MlS} {sg : Sig} {cs : List Cap} (he : tab[i] = (f, sg, cs)) :
    CSumm σ X C H f sg cs :=
  ht f sg cs (he ▸ List.getElem_mem hi)

/-- A mid step of the fold: entries whose soundness follows from the table so far. -/
theorem mid_step {C : Cfg} {tab tab' mids : CTab}
    (hm : CTabSound σ X C H tab → CTabSound σ X C H mids) (heq : mids ++ tab = tab')
    (ht : CTabSound σ X C H tab) : CTabSound σ X C H tab' :=
  heq ▸ ctabSound_append (hm ht) ht

theorem ctabSound_filter {C : Cfg} {tab : CTab} (ht : CTabSound σ X C H tab)
    (p : MlS × Sig × List Cap → Bool) : CTabSound σ X C H (tab.filter p) :=
  fun f sg cs h => ht f sg cs (List.mem_filter.mp h).1

/-! ## The base -/

/-- The non-growing helper base entries. -/
def helperBase : CTab := helperTab.filter fun q => !q.2.1.grows

/-- The base of the fold: the helper entries, then `baseHCTab`. -/
def baseWTab : CTab := helperBase ++ baseHCTab

theorem baseWTab_sound (hF : FoldOK σ X guestC H) (hK : GuestHooks H) (hT : HtabHooks H)
    (hDL : DomLow X) : CTabSound σ X guestC H baseWTab :=
  ctabSound_append (ctabSound_filter (helperTab_sound hF (domTop_of_domLow hDL)) _)
    (baseHCTab_sound hF hK hT)

/-! ## Mid groups -/

private theorem g_ff : (false = true → false = true) := id

def midRls : CTab := [(nm "rlp_list_to_slices", sigRLS false, [])]

theorem midRls_sound (hF : FoldOK σ X guestC H) (hDL : DomLow X)
    (cnt : CSumm σ X guestC H (nm "rlp_list_count") ⟨[.any, .any], [], [], false⟩ [])
    (itu : CSumm σ X guestC H (nm "rlp_item_total_unchecked") ⟨[.any], [], [], false⟩ []) :
    CTabSound σ X guestC H midRls :=
  ctabSound_cons ctabSound_nil
    (csumm_rlp_list_to_slices hF.hH hF.hC hF.hal hF.hAC hF.hNS hF.hX hDL cnt rfl rfl itu rfl rfl
      g_ff g_ff)

def midSha : CTab := [(nm "sha256", sigSha 32 false, [])]

theorem midSha_sound (hF : FoldOK σ X guestC H)
    (shaI : CSumm σ X guestC H (nm "sha256_state_init") ⟨[.buf 64], [], [], false⟩ [])
    (shaB : CSumm σ X guestC H (nm "sha256_block") ⟨[.buf 64, .any], [], [], false⟩ [])
    (shaF : CSumm σ X guestC H (nm "sha256_finish") ⟨[.any, .buf 32], [], [], false⟩ []) :
    CTabSound σ X guestC H midSha := by
  have hH := hF.hH
  have hT := tagSlots_guestC
  have hC := hF.hX
  have hA : AlignedDom X := hF.hal
  exact ctabSound_cons ctabSound_nil
    (csumm_sha256 hH hF.hC hF.hal hF.hAC hF.hNS hC scalarGlob_sha_st scalarGlob_sha_pad shaI rfl rfl
      shaB rfl rfl shaF rfl rfl (summ_memzero hH hT hC hA) (summ_memcpy hH hT hC hA)
      (summ_st_be64 hH hT hC hA) (le_refl _) g_ff g_ff g_ff)

def midUm : CTab := [(nm "u256_to_be_min", sigUm 32 false, [])]

theorem midUm_sound (hF : FoldOK σ X guestC H)
    (uByteLen : CSumm σ X guestC H (nm "u256_byte_length") ⟨[.any], [], [], false⟩ [])
    (uLimb : CSumm σ X guestC H (nm "u256_limb") ⟨[.any, .any], [], [], false⟩ []) :
    CTabSound σ X guestC H midUm :=
  ctabSound_cons ctabSound_nil
    (csumm_u256_to_be_min hF.hH hF.hC hF.hal hF.hAC hF.hNS hF.hX uByteLen rfl rfl uLimb rfl rfl
      (le_refl _) g_ff g_ff)

def midFe : CTab :=
  [ (nm "fe_neg", sigFe3 false, []), (nm "fe_neg", sigFe3eq false, []),
    (nm "fe_add", sigFe4 false, []), (nm "fe_sub", sigFe4 false, []),
    (nm "fe_mul_small", sigFe4 false, []) ]

theorem midFe_sound (hF : FoldOK σ X guestC H)
    (fqNeg : CSumm σ X guestC H (nm "fq_neg") ⟨[.any], [], [], false⟩ [])
    (fqAdd : CSumm σ X guestC H (nm "fq_add") ⟨[.any, .any], [], [], false⟩ [])
    (fqSub : CSumm σ X guestC H (nm "fq_sub") ⟨[.any, .any], [], [], false⟩ [])
    (fqMulSmall : CSumm σ X guestC H (nm "fq_mul_small") ⟨[.any, .any], [], [], false⟩ []) :
    CTabSound σ X guestC H midFe := by
  have hH := hF.hH
  have hC := hF.hX
  have hCf := hF.hC
  have hAC := hF.hAC
  have hNS := hF.hNS
  have hal := hF.hal
  have any1 : ∀ pt ∈ ([.any] : List PT), pt = .any := by simp
  have any2 : ∀ pt ∈ ([.any, .any] : List PT), pt = .any := by simp
  have fb3 := feBuf_bufArg guestC [.any]
  have fb4 := feBuf_bufArg guestC [.any, .any]
  have fb3e := feBuf_eq guestC [.any] (c := 12) (n := 384) (by decide) (by decide)
  refine ctabSound_cons (ctabSound_cons (ctabSound_cons (ctabSound_cons (ctabSound_cons
    ctabSound_nil ?_) ?_) ?_) ?_) ?_
  · exact csumm_fe_mul_small hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl
      fqMulSmall
  · exact csumm_fe_sub hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl fqSub
  · exact csumm_fe_add hH hCf hal hAC hNS hC fb4 rfl any2 rfl (fun h => by cases h) rfl fqAdd
  · exact csumm_fe_neg hH hCf hal hAC hNS hC fb3e rfl any1 rfl (fun h => by cases h) rfl fqNeg
  · exact csumm_fe_neg hH hCf hal hAC hNS hC fb3 rfl any1 rfl (fun h => by cases h) rfl fqNeg

def midRmd : CTab := [(nm "ripemd160", sigRmd 20 false, [])]

theorem midRmd_sound (hF : FoldOK σ X guestC H)
    (rmdB : CSumm σ X guestC H (nm "ripemd160_block") ⟨[.buf 40, .any], [], [], false⟩ []) :
    CTabSound σ X guestC H midRmd := by
  have hH := hF.hH
  have hT := tagSlots_guestC
  have hC := hF.hX
  have hA : AlignedDom X := hF.hal
  exact ctabSound_cons ctabSound_nil
    (csumm_ripemd160 hH hF.hC hF.hal hF.hAC hF.hNS hC scalarGlob_rmd_h scalarGlob_rmd_pad rmdB rfl
      rfl (summ_memzero hH hT hC hA) (summ_memcpy hH hT hC hA) (summ_st_le64 hH hT hC hA)
      (summ_st_le32 hH hT hC hA) (le_refl _) g_ff)

def midDA : CTab := [(nm "decode_account_from_leaf", Integ.sigDA 56 false, [])]

theorem midDA_sound (hF : FoldOK σ X guestC H)
    (hRD : CSumm σ X guestC H (nm "rlp_decode_fully") ⟨[.any, .any], [], [], false⟩ [])
    (hMF : CSumm σ X guestC H (nm "mpt_fail") ⟨[.any], [], [], false⟩ [])
    (hRLS : CSumm σ X guestC H (nm "rlp_list_to_slices") (sigRLS false) [])
    (hRI : CSumm σ X guestC H (nm "rlp_item") ⟨[.any, .any], [], [], false⟩ [])
    (hZ : CSumm σ X guestC H (nm "memzero") sigMemzero []) :
    CTabSound σ X guestC H midDA :=
  ctabSound_cons ctabSound_nil
    (Integ.csumm_decode_account_from_leaf hF.hH hF.hC hF.hal hF.hAC hF.hNS hF.hX
      gt_empty_trie_root gt_empty_code_hash hRD hMF hRLS hRI hZ (le_refl _) false)

end InitECandidate.Solver.MemSafe.Shards
