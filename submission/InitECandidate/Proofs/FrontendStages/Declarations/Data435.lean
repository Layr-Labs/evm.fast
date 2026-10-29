import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify419
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body435_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "items"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "items", Flapjack.Exp.const 1#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.const 24#64])])

def body435_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "items"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "items", Flapjack.Exp.const 1#64])

def body435_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body435_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "hasw") (Flapjack.Exp.const 0#64)) body435_1 body435_2

def body435_4 : Prog (BitVec 64) :=
.decCall ("hasw") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e")]) body435_3

def body435_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"))
  (Flapjack.Exp.const 0#64)) body435_4 body435_2

def body435_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body435_7 : Prog (BitVec 64) :=
.seq body435_5 body435_6

def body435_8 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "sr", Flapjack.Exp.var Flapjack.VarKind.local "j"]) body435_7

def body435_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "rcap")) body435_8

def body435_10 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body435_9

def body435_11 : Prog (BitVec 64) :=
.dec ("rcap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sr", Flapjack.Exp.const 24#64])) body435_10

def body435_12 : Prog (BitVec 64) :=
.seq body435_0 body435_11

def body435_13 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 8#64])) body435_12

def body435_14 : Prog (BitVec 64) :=
.dec ("sc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])) body435_13

def body435_15 : Prog (BitVec 64) :=
.dec ("ad") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s")) body435_14

def body435_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) body435_15 body435_2

def body435_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body435_18 : Prog (BitVec 64) :=
.seq body435_16 body435_17

def body435_19 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.var Flapjack.VarKind.local "i"]) body435_18

def body435_20 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) body435_19

def body435_21 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 40#64)

def body435_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "lim")
  (Flapjack.Exp.var Flapjack.VarKind.local "items")) body435_21 body435_2

def body435_23 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body435_24 : Prog (BitVec 64) :=
.seq body435_22 body435_23

def body435_25 : Prog (BitVec 64) :=
.decCall ("lim") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit", Flapjack.Exp.const 2000#64]) body435_24

def body435_26 : Prog (BitVec 64) :=
.seq body435_20 body435_25

def body435_27 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body435_26

def body435_28 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.const 24#64])) body435_27

def body435_29 : Prog (BitVec 64) :=
.dec ("items") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body435_28

def originalData435 : Decl (BitVec 64) :=
.function { name := "validate_block_access_list_gas_limit", inline := false, exported := false, params := [("block_gas_limit", Flapjack.Shape.one)], body := body435_29, returnShape := (Flapjack.Shape.one) }
def simplifiedData435 : Decl (BitVec 64) :=
.function { name := "validate_block_access_list_gas_limit", inline := false, exported := false, params := [("block_gas_limit", Flapjack.Shape.one)], body := body435_29, returnShape := (Flapjack.Shape.one) }
def original435 := Pancake.PanLang.declToHOL originalData435
def simplified435 := Pancake.PanLang.declToHOL simplifiedData435
end InitECandidate.Proofs.FrontendStages.Declarations
