import InitECandidate.Solver.MemSafe.Ssz.Bloom
import InitECandidate.Solver.MemSafe.ShardsJL.Tabs
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# The SSZ entries as a table, and the callers they unlock

* `sszTab`: `merkleize` (7 instances), `pack_bytes` (3), `htr_bytes_vector` (4), `add_to_bloom`;
  **`sszTab_sound`** for any hooks with `FoldOK`, a sound `merkTab` and `keccak256`'s summary.
* `merkTab_of_tab26`: `merkTab` from the fold's table (`ShardsJL.tab26` entries 404, 556, 555, 22,
  558).
* **`sszFold_sound`**: the checker accepts `merkleize_progressive` and `htr_pcontainer` at
  `[any, eq c, buf 32]` (`c ∈ {5, 19}`) and `htr_withdrawal`, `htr_wdreq`, `htr_cons`,
  `htr_bexit`, `htr_deposit`, `htr_bdep` (signature `[any, buf 32]`) and `logs_bloom`
  (`[any, buf 256]`), all non-growing, against
  `sszTab ++ ShardsJL.tab26` (`ssz_callers_ok`, `decide`), so their summaries hold too.
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Ssz
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

def sszTab : CTab :=
  (merkInst.map fun q => (nm "merkleize", merkSig q.1 q.2.1, [])) ++
  (pbInst.map fun c => (nm "pack_bytes", pbSig c, [])) ++
  (hbInst.map fun c => (nm "htr_bytes_vector", hbSig c, [])) ++
  [(nm "add_to_bloom", abSig, [])]

/-- The fold's `keccak256` signature (`ShardsJL.tab26` entry 488). -/
def kecSig : Sig := ⟨[.any, .any, (.buf 32)], [], [], false⟩

/-- **The SSZ entries are sound.** -/
theorem sszTab_sound {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hT : CTabSound σ X Types.guestC H merkTab)
    (hK : CSumm σ X Types.guestC H (nm "keccak256") kecSig []) :
    CTabSound σ X Types.guestC H sszTab := by
  have hTp : CTabSound σ X Types.guestC H pbTab :=
    ctabSound_sub hT fun e he => by
      simp only [pbTab, List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl | rfl <;> simp [merkTab]
  intro f sg cs hm
  simp only [sszTab, List.mem_append, List.mem_map, List.mem_singleton] at hm
  rcases hm with ((⟨q, hq, he⟩ | ⟨c, hc, he⟩) | ⟨c, hc, he⟩) | he
  · cases he
    exact csumm_merkleize hF hT hq
  · cases he
    exact csumm_pack_bytes hF hTp hc
  · cases he
    exact csumm_htr_bytes_vector hF hT hc
  · cases he
    refine csumm_add_to_bloom hF fun f sg cs hm => ?_
    simp only [abTab, List.mem_cons, List.not_mem_nil, or_false, Prod.mk.injEq] at hm
    rcases hm with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩
    · exact hK
    · exact hT _ _ _ (by simp [merkTab])

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
/-- `merkTab` from the fold's final table. -/
theorem merkTab_of_tab26 {H : Hooks σ} (h : CTabSound σ X Types.guestC H ShardsJL.tab26) :
    CTabSound σ X Types.guestC H merkTab := by
  intro f sg cs hm
  simp only [merkTab, List.mem_cons, List.not_mem_nil, or_false, Prod.mk.injEq] at hm
  rcases hm with ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ | ⟨rfl, rfl, rfl⟩ |
    ⟨rfl, rfl, rfl⟩
  · exact ctab% h
  · exact ctab% h
  · exact ctab% h
  · exact ctab% h
  · exact ctab% h

/-! ## The callers -/

def sg2 : Sig := ⟨[.any, .buf 32], [], [], false⟩

def sg3 (c : Nat) : Sig := ⟨[.any, .eq c, .buf 32], [], [], false⟩

def sszCallers : List MCand :=
  [MCand.ofPair (nm "merkleize_progressive") (declPair Guest.Software.guestFn_merkleize_progressive)
     (sg3 5) [],
   MCand.ofPair (nm "merkleize_progressive") (declPair Guest.Software.guestFn_merkleize_progressive)
     (sg3 19) [],
   MCand.ofPair (nm "htr_pcontainer") (declPair Guest.Software.guestFn_htr_pcontainer) (sg3 5) [],
   MCand.ofPair (nm "htr_pcontainer") (declPair Guest.Software.guestFn_htr_pcontainer) (sg3 19) [],
   MCand.ofPair (nm "htr_withdrawal") (declPair Guest.Software.guestFn_htr_withdrawal) sg2 [],
   MCand.ofPair (nm "htr_wdreq") (declPair Guest.Software.guestFn_htr_wdreq) sg2 [],
   MCand.ofPair (nm "htr_cons") (declPair Guest.Software.guestFn_htr_cons) sg2 [],
   MCand.ofPair (nm "htr_bexit") (declPair Guest.Software.guestFn_htr_bexit) sg2 [],
   MCand.ofPair (nm "htr_deposit") (declPair Guest.Software.guestFn_htr_deposit) sg2 [],
   MCand.ofPair (nm "htr_bdep") (declPair Guest.Software.guestFn_htr_bdep) sg2 [],
   MCand.ofPair (nm "logs_bloom") (declPair Guest.Software.guestFn_logs_bloom)
     ⟨[.any, (.buf 256)], [], [], false⟩ []]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ssz_callers_ok : chkChunk Types.guestC (sszTab ++ ShardsJL.tab26) sszCallers = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem ssz_callers_valid : ∀ e ∈ sszCallers, e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 188) (by decide)) ⟨_, rfl⟩) rfl _ _)
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 188) (by decide)) ⟨_, rfl⟩) rfl _ _)
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 191) (by decide)) ⟨_, rfl⟩) rfl _ _)
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 191) (by decide)) ⟨_, rfl⟩) rfl _ _)
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 208) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 212) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 213) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 215) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 211) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 214) (by decide)) ⟨_, rfl⟩) rfl _ _)
    (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 832) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil))))))))))

/-- **The fold's table extended by the SSZ entries and the six callers.** -/
theorem sszFold_sound {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (h26 : CTabSound σ X Types.guestC H ShardsJL.tab26) :
    CTabSound σ X Types.guestC H (chunkTab (sszTab ++ ShardsJL.tab26) sszCallers) :=
  chkChunk_sound hF sszCallers _ ssz_callers_ok ssz_callers_valid
    (ctabSound_append (sszTab_sound hF (merkTab_of_tab26 h26)
      (ctab% h26)) h26)

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.sszTab_sound
#print axioms InitECandidate.Solver.MemSafe.Ssz.sszFold_sound
