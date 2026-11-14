import InitECandidate.Solver.MemSafe.Eb.Cost5
import InitECandidate.Solver.MemSafe.BalCost.Main

/-!
# `execute_block`: the cost walk, part 6 (the unconditional table bounds)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def cAlloc : Nat := 2
def cMemzero : Nat := 73786976294838206468
def cMemeq : Nat := 73786976294838206468
def cKeccak : Nat := 680564733841876927387917816706275213341
def cMax : Nat := 0
def cLstNew : Nat := 6
def cTrack : Nat := 0
def cVbal : Nat := 31385508676933403825984594454457101350295778205019404238864
def cLogsBloom : Nat := 231584178474632391048009225549749600190119114904439069012931441623018172842065
def cCrh : Nat := 4083388403051261562445939004719277015092
def cBbl : Nat := 1025972008706713166110970437243488442355025126929734641136002266565202642390083371534192
def cBalInit : Nat := 42
def cSft : Nat := 107
def cDecTx : Nat := 59285549721426468995490466905443198854109319367745618591015673292614832979410275

theorem cc_cAlloc : CalleeCost σ guestCtx (nm "alloc") cAlloc := Wire.calleeCost_guest (by rfl)
theorem cc_cMemzero : CalleeCost σ guestCtx (nm "memzero") cMemzero := Wire.calleeCost_guest (by rfl)
theorem cc_cMemeq : CalleeCost σ guestCtx (nm "memeq") cMemeq := Wire.calleeCost_guest (by rfl)
theorem cc_cKeccak : CalleeCost σ guestCtx (nm "keccak256") cKeccak := Wire.calleeCost_guest (by rfl)
theorem cc_cMax : CalleeCost σ guestCtx (nm "max") cMax := Wire.calleeCost_guest (by rfl)
theorem cc_cLstNew : CalleeCost σ guestCtx (nm "lst_new") cLstNew := Wire.calleeCost_guest (by rfl)
theorem cc_cTrack : CalleeCost σ guestCtx (nm "track_ancestor_access") cTrack := Wire.calleeCost_guest (by rfl)
theorem cc_cVbal : CalleeCost σ guestCtx (nm "validate_block_access_list_gas_limit") cVbal := Wire.calleeCost_guest (by rfl)
theorem cc_cLogsBloom : CalleeCost σ guestCtx (nm "logs_bloom") cLogsBloom := Wire.calleeCost_guest (by rfl)
theorem cc_cCrh : CalleeCost σ guestCtx (nm "compute_requests_hash") cCrh := Wire.calleeCost_guest (by rfl)
theorem cc_cBbl : CalleeCost σ guestCtx (nm "build_block_access_list_rlp") 1804909045353169020656890361888606632600169938960154361865870097135842364348562771478388845869804237 := Wire.calleeCost_guest (by rfl)
theorem cc_cBalInit : CalleeCost σ guestCtx (nm "bal_init") cBalInit := Wire.calleeCost_guest (by rfl)
theorem cc_cSft : CalleeCost σ guestCtx (nm "state_fresh_tx") cSft := Wire.calleeCost_guest (by rfl)
theorem cc_cDecTx : CalleeCost σ guestCtx (nm "decode_transaction") cDecTx := Wire.calleeCost_guest (by rfl)

end InitECandidate.Solver.MemSafe.Eb

namespace InitECandidate.Solver.MemSafe.Eb
 theorem cc_cBbl_cond {σ : Type} : InitECandidate.Solver.Spec.Inv.CalleeCostP σ
     InitECandidate.Solver.SourceCost.guestCtx (InitECandidate.Solver.Spec.nm "build_block_access_list_rlp")
     InitECandidate.Solver.MemSafe.BalCost.Main.mainPre cBbl :=
   (InitECandidate.Solver.MemSafe.BalCost.Main.callee_cost).mono (by decide +kernel)
end InitECandidate.Solver.MemSafe.Eb
