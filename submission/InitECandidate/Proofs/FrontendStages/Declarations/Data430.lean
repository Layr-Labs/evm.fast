import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify414
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body430_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body430_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body430_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "a"))) body430_0 body430_1

def body430_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body430_4 : Prog (BitVec 64) :=
.seq body430_2 body430_3

def body430_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 0#64)) body430_4 body430_1

def body430_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "len" (Flapjack.Exp.const 32#64)

def body430_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) body430_6 body430_1

def body430_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "cb")
  (Flapjack.Exp.var Flapjack.VarKind.local "ca")) body430_0 body430_1

def body430_9 : Prog (BitVec 64) :=
.seq body430_8 body430_3

def body430_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ca")
  (Flapjack.Exp.var Flapjack.VarKind.local "cb")) body430_9 body430_1

def body430_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body430_12 : Prog (BitVec 64) :=
.seq body430_10 body430_11

def body430_13 : Prog (BitVec 64) :=
.dec ("cb") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "k"])) body430_12

def body430_14 : Prog (BitVec 64) :=
.dec ("ca") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "k"])) body430_13

def body430_15 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "k")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) body430_14

def body430_16 : Prog (BitVec 64) :=
.seq body430_15 body430_3

def body430_17 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body430_16

def body430_18 : Prog (BitVec 64) :=
.seq body430_7 body430_17

def body430_19 : Prog (BitVec 64) :=
.dec ("len") (Flapjack.Shape.one) (Flapjack.Exp.const 20#64) body430_18

def body430_20 : Prog (BitVec 64) :=
.seq body430_5 body430_19

def originalData430 : Decl (BitVec 64) :=
.function { name := "bal_sort_gt", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("kind", Flapjack.Shape.one)], body := body430_20, returnShape := (Flapjack.Shape.one) }
def simplifiedData430 : Decl (BitVec 64) :=
.function { name := "bal_sort_gt", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one), ("kind", Flapjack.Shape.one)], body := body430_20, returnShape := (Flapjack.Shape.one) }
def original430 := Pancake.PanLang.declToHOL originalData430
def simplified430 := Pancake.PanLang.declToHOL simplifiedData430
end InitECandidate.Proofs.FrontendStages.Declarations
