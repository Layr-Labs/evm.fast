import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.Types
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Helpers.Bytes
import InitECandidate.Solver.MemSafe.Helpers.Rlp
import InitECandidate.Solver.MemSafe.Helpers.Nibbles
import InitECandidate.Solver.MemSafe.Helpers.BufRead
import InitECandidate.Solver.MemSafe.Helpers.U256Mod
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes

/-!
# The base of the fold: built-ins and hand-proved plain summaries

`baseTab`: the allocators and `trap_with` (`Builtin.lean`) and the hand-proved helper
summaries (`MemSafe/Helpers`: memory, byte stores, RLP encoders, nibbles, buffer reads,
`u256` division). `baseTab_sound`: all of them hold for the guest configuration
`Types.guestC`, every lawful hook family and every guest context with an aligned memory
domain (`FoldOK`).
-/

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem cfg_alloc_guest : AllocCfg guestC := fun g hg => alloc_untyped g hg

def baseTab : SumTab :=
  [ (nm "u256_mulmod", sigWs3), (nm "u256_addmod", sigWs3), (nm "u256_mod", sigWs2),
    (nm "u256_div", sigWs2), (nm "u256_divmod", sigWs2),
    (nm "buffer_read", sigBufferRead), (nm "key_to_nibbles", sigKeyToNibbles),
    (nm "rlp_encode_word", sigRlpEncodeWord), (nm "rlp_encode_bytes", sigRlpEncodeBytes),
    (nm "rlp_write_header", sigRlpWriteHeader), (nm "rlp_put_be", sigRlpPutBe),
    (nm "rlp_be_len", sigRlpBeLen), (nm "u256_to_be32", sigU256ToBe32),
    (nm "st_be64", sigSt8), (nm "st_le64", sigSt8), (nm "st_be32", sigSt4),
    (nm "st_le32", sigSt4), (nm "bswap64", sigBswap64), (nm "memzero", sigMemzero),
    (nm "memcpy", sigMemcpy) ] ++ builtinTab

theorem tabSound_nil {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} :
    TabSound σ X C H [] := fun _ _ h => by cases h

theorem baseTab_sound {σ : Type} {X : Ctx 64} {H : Hooks σ} (hF : FoldOK σ X guestC H) :
    TabSound σ X guestC H baseTab := by
  have hH := hF.hH
  have hT := tagSlots_guestC
  have hC := hF.hX
  have hA : AlignedDom X := hF.hal
  have hW := scalarGlob_u256_ws
  refine tabSound_append ?_ (builtinTab_sound hC hH hF.hAC)
  refine tabSound_cons ?_ (summ_u256_mulmod hH hT hW hC hA)
  refine tabSound_cons ?_ (summ_u256_addmod hH hT hW hC hA)
  refine tabSound_cons ?_ (summ_u256_mod hH hT hW hC hA)
  refine tabSound_cons ?_ (summ_u256_div hH hT hW hC hA)
  refine tabSound_cons ?_ (summ_u256_divmod hH hT hW hC hA)
  refine tabSound_cons ?_ (summ_buffer_read hH hT hC hA)
  refine tabSound_cons ?_ (summ_key_to_nibbles hH hT hC)
  refine tabSound_cons ?_ (summ_rlp_encode_word hH hT hC hA)
  refine tabSound_cons ?_ (summ_rlp_encode_bytes hH hT hC hA)
  refine tabSound_cons ?_ (summ_rlp_write_header hH hT hC hA)
  refine tabSound_cons ?_ (summ_rlp_put_be hH hT hC)
  refine tabSound_cons ?_ (summ_rlp_be_len hH hT hC)
  refine tabSound_cons ?_ (summ_u256_to_be32 hH hT hC hA)
  refine tabSound_cons ?_ (summ_st_be64 hH hT hC hA)
  refine tabSound_cons ?_ (summ_st_le64 hH hT hC hA)
  refine tabSound_cons ?_ (summ_st_be32 hH hT hC hA)
  refine tabSound_cons ?_ (summ_st_le32 hH hT hC hA)
  refine tabSound_cons ?_ (summ_bswap64 hH hT hC)
  refine tabSound_cons ?_ (summ_memzero hH hT hC hA)
  refine tabSound_cons ?_ (summ_memcpy hH hT hC hA)
  exact tabSound_nil

end InitECandidate.Solver.MemSafe.Shards
