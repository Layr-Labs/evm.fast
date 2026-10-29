import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify283
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body299_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.var Flapjack.VarKind.local "envcode")

def body299_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body299_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 8#64)
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f"))) body299_0 body299_1

def body299_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64),
      Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
            Flapjack.Exp.var Flapjack.VarKind.local "j"])])

def body299_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body299_5 : Prog (BitVec 64) :=
.seq body299_3 body299_4

def body299_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f"))) body299_5

def body299_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body299_8 : Prog (BitVec 64) :=
.seq body299_6 body299_7

def body299_9 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body299_8

def body299_10 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body299_9

def body299_11 : Prog (BitVec 64) :=
.seq body299_2 body299_10

def body299_12 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "i",
  Flapjack.Exp.var Flapjack.VarKind.local "maxb"]) body299_11

def originalData299 : Decl (BitVec 64) :=
.function { name := "tx_scalar_word", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one), ("maxb", Flapjack.Shape.one), ("envcode", Flapjack.Shape.one)], body := body299_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData299 : Decl (BitVec 64) :=
.function { name := "tx_scalar_word", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one), ("maxb", Flapjack.Shape.one), ("envcode", Flapjack.Shape.one)], body := body299_12, returnShape := (Flapjack.Shape.one) }
def original299 := Pancake.PanLang.declToHOL originalData299
def simplified299 := Pancake.PanLang.declToHOL simplifiedData299
end InitECandidate.Proofs.FrontendStages.Declarations
