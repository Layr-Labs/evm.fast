import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data117
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate97
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody117_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 20#64]

def globalBody117_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody117_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 8#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody117_0 globalBody117_1

def globalBody117_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 21#64]

def globalBody117_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p"))
        (Flapjack.Exp.const 0#64))]) globalBody117_3 globalBody117_1

def globalBody117_5 : Prog (BitVec 64) :=
.seq globalBody117_2 globalBody117_4

def globalBody117_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64),
      Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"])])

def globalBody117_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody117_8 : Prog (BitVec 64) :=
.seq globalBody117_6 globalBody117_7

def globalBody117_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody117_8

def globalBody117_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody117_11 : Prog (BitVec 64) :=
.seq globalBody117_9 globalBody117_10

def globalBody117_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody117_11

def globalBody117_13 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody117_12

def globalBody117_14 : Prog (BitVec 64) :=
.seq globalBody117_5 globalBody117_13

def globalData117 : Decl (BitVec 64) :=
.function { name := "rlp_bytes_to_word", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody117_14, returnShape := (Flapjack.Shape.one) }
def globalOutput117 := Pancake.PanLang.declToHOL globalData117
end InitECandidate.Proofs.FrontendStages.Declarations
