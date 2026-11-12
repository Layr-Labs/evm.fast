import InitECandidate.Solver.MemSafe.Ini.Ghost2

/-!
# `state_init`: the code, as a chain of statements (`siC0 ... siC24`)

`siBody = alloc ws; 3 stores; var root = decode_witness_to_mpt(..); store; var t = htab_new(32,64); siTail`, where
`siTail` is the chain of the remaining statements `siS 0 ... siS 23` ending with `return 0`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

def siStm : List (ProgHOL 64) :=
  [.store (.op .add [gv (nm "ws"), cw 32]) (lv (nm "t")),
   .call (some (some (.global, nm "bs"), none)) (nm "alloc") [cw 80],
   .store (.op .add [gv (nm "bs"), cw 0]) (gv (nm "ws")),
   .call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw 20, cw 256],
   .store (.op .add [gv (nm "bs"), cw 8]) (lv (nm "t")),
   .call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw 20, cw 256],
   .store (.op .add [gv (nm "bs"), cw 16]) (lv (nm "t")),
   .call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw 52, cw 256],
   .store (.op .add [gv (nm "bs"), cw 24]) (lv (nm "t")),
   .call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw 20, cw 64],
   .store (.op .add [gv (nm "bs"), cw 32]) (lv (nm "t")),
   .call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw 52, cw 64],
   .store (.op .add [gv (nm "bs"), cw 40]) (lv (nm "t")),
   .call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw 32, cw 64],
   .store (.op .add [gv (nm "bs"), cw 48]) (lv (nm "t")),
   .store (.op .add [gv (nm "bs"), cw 56]) (cw 0),
   .store (.op .add [gv (nm "bs"), cw 64]) (cw 0),
   .call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw 20, cw 256],
   .store (.op .add [gv (nm "bs"), cw 72]) (lv (nm "t")),
   .call (some (some (.global, nm "sk_buf"), none)) (nm "alloc") [cw 64],
   .assign .global (nm "journal_cap") (cw 524288),
   .call (some (some (.global, nm "journal"), none)) (nm "alloc") [.panop .mul [gv (nm "journal_cap"), cw 32]],
   .assign .global (nm "journal_n") (cw 0),
   .assign .global (nm "ts") (cw 0)]

/-- The statements chained: `siChain [s0, s1, ...] = s0; s1; ...; return 0`. -/
def siChain : List (ProgHOL 64) → ProgHOL 64
  | [] => .return (cw 0)
  | s :: ss => .seq s (siChain ss)

def siTail : ProgHOL 64 := siChain siStm

def siBody : ProgHOL 64 :=
  .seq (.call (some (some (.global, nm "ws"), none)) (nm "alloc") [cw 40])
    (.seq (.store (.op .add [gv (nm "ws"), cw 0]) (lv (nm "nodedb")))
    (.seq (.store (.op .add [gv (nm "ws"), cw 8]) (lv (nm "state_root")))
    (.seq (.store (.op .add [gv (nm "ws"), cw 16]) (lv (nm "codedb")))
    (.decCall (nm "root") .one (nm "decode_witness_to_mpt") [lv (nm "nodedb"), lv (nm "state_root")]
      (.seq (.store (.op .add [gv (nm "ws"), cw 24]) (lv (nm "root")))
        (.decCall (nm "t") .one (nm "htab_new") [cw 32, cw 64] siTail))))))

theorem entry_si : fnEntry Guest.Software.guestFn_state_init =
    (nm "state_init", [(nm "nodedb", .one), (nm "state_root", .one), (nm "codedb", .one)], siBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

end InitECandidate.Solver.MemSafe.Ini
