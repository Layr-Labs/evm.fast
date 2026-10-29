import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data430
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody430_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody430_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody430_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "a"))) globalBody430_0 globalBody430_1

def globalBody430_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody430_4 : Prog (BitVec 64) :=
.seq globalBody430_2 globalBody430_3

def globalBody430_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 0#64)) globalBody430_4 globalBody430_1

def globalBody430_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "len" (Flapjack.Exp.const 32#64)

def globalBody430_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) globalBody430_6 globalBody430_1

def globalBody430_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "cb")
  (Flapjack.Exp.var Flapjack.VarKind.local "ca")) globalBody430_0 globalBody430_1

def globalBody430_9 : Prog (BitVec 64) :=
.seq globalBody430_8 globalBody430_3

def globalBody430_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ca")
  (Flapjack.Exp.var Flapjack.VarKind.local "cb")) globalBody430_9 globalBody430_1

def globalBody430_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def globalBody430_12 : Prog (BitVec 64) :=
.seq globalBody430_10 globalBody430_11

def globalBody430_13 : Prog (BitVec 64) :=
.dec ("cb") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "k"])) globalBody430_12

def globalBody430_14 : Prog (BitVec 64) :=
.dec ("ca") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "k"])) globalBody430_13

def globalBody430_15 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "k")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) globalBody430_14

def globalBody430_16 : Prog (BitVec 64) :=
.seq globalBody430_15 globalBody430_3

def globalBody430_17 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody430_16

def globalBody430_18 : Prog (BitVec 64) :=
.seq globalBody430_7 globalBody430_17

def globalBody430_19 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.const 20#64) globalBody430_18

def globalBody430_20 : Prog (BitVec 64) :=
.seq globalBody430_5 globalBody430_19

def globalData430 : Decl (BitVec 64) :=
.function { name := "bal_sort_gt", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("kind", Flapjack.Shape.one)], body := globalBody430_20, returnShape := (Flapjack.Shape.one) }
def globalOutput430 := Pancake.PanLang.declToHOL globalData430
end InitECandidate.Proofs.FrontendStages.Declarations
