import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data107
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate85
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody107_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 2#64]

def globalBody107_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody107_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p"))
        (Flapjack.Exp.const 0#64))]) globalBody107_0 globalBody107_1

def globalBody107_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64),
      Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"])])

def globalBody107_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody107_5 : Prog (BitVec 64) :=
.seq globalBody107_3 globalBody107_4

def globalBody107_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody107_5

def globalBody107_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody107_8 : Prog (BitVec 64) :=
.seq globalBody107_6 globalBody107_7

def globalBody107_9 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody107_8

def globalBody107_10 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody107_9

def globalBody107_11 : Prog (BitVec 64) :=
.seq globalBody107_2 globalBody107_10

def globalData107 : Decl (BitVec 64) :=
.function { name := "rlp_read_length", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody107_11, returnShape := (Flapjack.Shape.one) }
def globalOutput107 := Pancake.PanLang.declToHOL globalData107
end InitECandidate.Proofs.FrontendStages.Declarations
