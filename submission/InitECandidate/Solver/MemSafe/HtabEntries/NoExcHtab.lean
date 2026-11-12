import InitECandidate.Solver.MemSafe.HtabEntries.NoExc
import InitECandidate.Solver.SourceCost.Shard
import Guest.SoftwareAst

/-!
# `NoExc` for the hash-table code

`noExc_htabX`: every function of `htabX` (the hash-table API and what it calls: `trap_with`,
`alloc`, `memcpy`, `memeq`) has only returns and abortive results among its good results. Each
body is checked by `xChk` against the functions before it (`cbv` on the body, then `decide`).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem noExc_of_pair {tab : List MlS} (hT : NoExcTab σ X tab) (hX : X.code.lookup = guestCode)
    {p : ShardPair} (hp : PairValid p) (hchk : xChk tab false p.2.2 = true) : NoExc σ X p.1 := by
  obtain ⟨rs, h⟩ := hp
  exact noExc_of_chk hT (by rw [hX]; exact h) hchk

theorem xchk_trap_with : xChk [] false (declPair Guest.Software.guestFn_trap_with).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_alloc : xChk [nm "trap_with"] false (declPair Guest.Software.guestFn_alloc).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_memcpy : xChk (nm "alloc" :: [nm "trap_with"]) false (declPair Guest.Software.guestFn_memcpy).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_memeq : xChk (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"])) false (declPair Guest.Software.guestFn_memeq).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_first_diff : xChk (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"]))) false (declPair Guest.Software.guestFn_htab_first_diff).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_find_leaf : xChk (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"])))) false (declPair Guest.Software.guestFn_htab_find_leaf).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_grow : xChk (nm "htab_find_leaf" :: (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"]))))) false (declPair Guest.Software.guestFn_htab_grow).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_new_node : xChk (nm "htab_grow" :: (nm "htab_find_leaf" :: (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"])))))) false (declPair Guest.Software.guestFn_htab_new_node).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_new_leaf : xChk (nm "htab_new_node" :: (nm "htab_grow" :: (nm "htab_find_leaf" :: (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"]))))))) false (declPair Guest.Software.guestFn_htab_new_leaf).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_new_internal : xChk (nm "htab_new_leaf" :: (nm "htab_new_node" :: (nm "htab_grow" :: (nm "htab_find_leaf" :: (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"])))))))) false (declPair Guest.Software.guestFn_htab_new_internal).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_set : xChk (nm "htab_new_internal" :: (nm "htab_new_leaf" :: (nm "htab_new_node" :: (nm "htab_grow" :: (nm "htab_find_leaf" :: (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"]))))))))) false (declPair Guest.Software.guestFn_htab_set).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_del : xChk (nm "htab_set" :: (nm "htab_new_internal" :: (nm "htab_new_leaf" :: (nm "htab_new_node" :: (nm "htab_grow" :: (nm "htab_find_leaf" :: (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"])))))))))) false (declPair Guest.Software.guestFn_htab_del).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_truncate : xChk (nm "htab_del" :: (nm "htab_set" :: (nm "htab_new_internal" :: (nm "htab_new_leaf" :: (nm "htab_new_node" :: (nm "htab_grow" :: (nm "htab_find_leaf" :: (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"]))))))))))) false (declPair Guest.Software.guestFn_htab_truncate).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_htab_get : xChk (nm "htab_truncate" :: (nm "htab_del" :: (nm "htab_set" :: (nm "htab_new_internal" :: (nm "htab_new_leaf" :: (nm "htab_new_node" :: (nm "htab_grow" :: (nm "htab_find_leaf" :: (nm "htab_first_diff" :: (nm "memeq" :: (nm "memcpy" :: (nm "alloc" :: [nm "trap_with"])))))))))))) false (declPair Guest.Software.guestFn_htab_get).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

/-- The functions with `NoExc` (newest first). -/
def htabX : List MlS := [nm "htab_get", nm "htab_truncate", nm "htab_del", nm "htab_set", nm "htab_new_internal", nm "htab_new_leaf", nm "htab_new_node", nm "htab_grow", nm "htab_find_leaf", nm "htab_first_diff", nm "memeq", nm "memcpy", nm "alloc", nm "trap_with"]

theorem noExc_htabX (hX : X.code.lookup = guestCode) : NoExcTab σ X htabX := by
  have h0 := noExcTab_cons (noExcTab_nil (σ := σ)) (noExc_of_pair (noExcTab_nil (σ := σ)) hX (p := declPair Guest.Software.guestFn_trap_with)
    (declPair_valid (List.getElem_mem (n := 3) (by decide)) ⟨_, rfl⟩) xchk_trap_with)
  have h1 := noExcTab_cons h0 (noExc_of_pair h0 hX (p := declPair Guest.Software.guestFn_alloc)
    (declPair_valid (List.getElem_mem (n := 7) (by decide)) ⟨_, rfl⟩) xchk_alloc)
  have h2 := noExcTab_cons h1 (noExc_of_pair h1 hX (p := declPair Guest.Software.guestFn_memcpy)
    (declPair_valid (List.getElem_mem (n := 16) (by decide)) ⟨_, rfl⟩) xchk_memcpy)
  have h3 := noExcTab_cons h2 (noExc_of_pair h2 hX (p := declPair Guest.Software.guestFn_memeq)
    (declPair_valid (List.getElem_mem (n := 18) (by decide)) ⟨_, rfl⟩) xchk_memeq)
  have h4 := noExcTab_cons h3 (noExc_of_pair h3 hX (p := declPair Guest.Software.guestFn_htab_first_diff)
    (declPair_valid (List.getElem_mem (n := 130) (by decide)) ⟨_, rfl⟩) xchk_htab_first_diff)
  have h5 := noExcTab_cons h4 (noExc_of_pair h4 hX (p := declPair Guest.Software.guestFn_htab_find_leaf)
    (declPair_valid (List.getElem_mem (n := 131) (by decide)) ⟨_, rfl⟩) xchk_htab_find_leaf)
  have h6 := noExcTab_cons h5 (noExc_of_pair h5 hX (p := declPair Guest.Software.guestFn_htab_grow)
    (declPair_valid (List.getElem_mem (n := 137) (by decide)) ⟨_, rfl⟩) xchk_htab_grow)
  have h7 := noExcTab_cons h6 (noExc_of_pair h6 hX (p := declPair Guest.Software.guestFn_htab_new_node)
    (declPair_valid (List.getElem_mem (n := 134) (by decide)) ⟨_, rfl⟩) xchk_htab_new_node)
  have h8 := noExcTab_cons h7 (noExc_of_pair h7 hX (p := declPair Guest.Software.guestFn_htab_new_leaf)
    (declPair_valid (List.getElem_mem (n := 135) (by decide)) ⟨_, rfl⟩) xchk_htab_new_leaf)
  have h9 := noExcTab_cons h8 (noExc_of_pair h8 hX (p := declPair Guest.Software.guestFn_htab_new_internal)
    (declPair_valid (List.getElem_mem (n := 136) (by decide)) ⟨_, rfl⟩) xchk_htab_new_internal)
  have h10 := noExcTab_cons h9 (noExc_of_pair h9 hX (p := declPair Guest.Software.guestFn_htab_set)
    (declPair_valid (List.getElem_mem (n := 138) (by decide)) ⟨_, rfl⟩) xchk_htab_set)
  have h11 := noExcTab_cons h10 (noExc_of_pair h10 hX (p := declPair Guest.Software.guestFn_htab_del)
    (declPair_valid (List.getElem_mem (n := 139) (by decide)) ⟨_, rfl⟩) xchk_htab_del)
  have h12 := noExcTab_cons h11 (noExc_of_pair h11 hX (p := declPair Guest.Software.guestFn_htab_truncate)
    (declPair_valid (List.getElem_mem (n := 140) (by decide)) ⟨_, rfl⟩) xchk_htab_truncate)
  have h13 := noExcTab_cons h12 (noExc_of_pair h12 hX (p := declPair Guest.Software.guestFn_htab_get)
    (declPair_valid (List.getElem_mem (n := 132) (by decide)) ⟨_, rfl⟩) xchk_htab_get)
  exact h13

end InitECandidate.Solver.MemSafe.HtabEntries
