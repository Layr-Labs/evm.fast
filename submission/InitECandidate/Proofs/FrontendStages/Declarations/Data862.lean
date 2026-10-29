import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify846
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body862_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "zero32"), none)) "alloc" [Flapjack.Exp.const 32#64]

def body862_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "zero32", Flapjack.Exp.const 32#64]

def body862_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "precompile_addrs"), none)) "alloc"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 18#64, Flapjack.Exp.const 20#64]]

def body862_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "precompile_addrs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 18#64, Flapjack.Exp.const 20#64]]

def body862_4 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "precompile_addrs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 20#64],
      Flapjack.Exp.const 19#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body862_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body862_6 : Prog (BitVec 64) :=
.seq body862_4 body862_5

def body862_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 17#64)) body862_6

def body862_8 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "precompile_addrs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 17#64, Flapjack.Exp.const 20#64],
      Flapjack.Exp.const 18#64])
  (Flapjack.Exp.const 1#64)

def body862_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "beacon_roots_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body862_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "beacon_roots_address", Flapjack.Exp.const 998902#64,
    Flapjack.Exp.const 15506597749690834871#64, Flapjack.Exp.const 13311379508201171970#64]

def body862_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "history_storage_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body862_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "history_storage_address", Flapjack.Exp.const 63752#64,
    Flapjack.Exp.const 2878298490047003138#64, Flapjack.Exp.const 3700577164601600309#64]

def body862_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "withdrawal_request_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body862_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "withdrawal_request_address", Flapjack.Exp.const 2401#64,
    Flapjack.Exp.const 17242047345525313946#64, Flapjack.Exp.const 15579492241104728066#64]

def body862_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "consolidation_request_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body862_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "consolidation_request_address", Flapjack.Exp.const 48093#64,
    Flapjack.Exp.const 14397524800236640159#64, Flapjack.Exp.const 10016273463683084881#64]

def body862_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "builder_deposit_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body862_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "builder_deposit_address", Flapjack.Exp.const 49140#64,
    Flapjack.Exp.const 7603452151126424148#64, Flapjack.Exp.const 760111669195932290#64]

def body862_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "builder_exit_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body862_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "builder_exit_address", Flapjack.Exp.const 25814#64,
    Flapjack.Exp.const 8669529151676140297#64, Flapjack.Exp.const 4307224735379260034#64]

def body862_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "deposit_contract_address"), none)) "alloc"
  [Flapjack.Exp.const 24#64]

def body862_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.var Flapjack.VarKind.global "deposit_contract_address", Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 2421447037043915651#64, Flapjack.Exp.const 11294470620239562234#64]

def body862_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "deposit_event_signature_hash"), none)) "alloc"
  [Flapjack.Exp.const 32#64]

def body862_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 0#64],
    Flapjack.Exp.const 7249595157780304706#64]

def body862_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 8#64],
    Flapjack.Exp.const 12676030261858484297#64]

def body862_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 16#64],
    Flapjack.Exp.const 16708898399860066458#64]

def body862_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.global "deposit_event_signature_hash", Flapjack.Exp.const 24#64],
    Flapjack.Exp.const 12074291595689605317#64]

def body862_28 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body862_29 : Prog (BitVec 64) :=
.seq body862_27 body862_28

def body862_30 : Prog (BitVec 64) :=
.seq body862_26 body862_29

def body862_31 : Prog (BitVec 64) :=
.seq body862_25 body862_30

def body862_32 : Prog (BitVec 64) :=
.seq body862_24 body862_31

def body862_33 : Prog (BitVec 64) :=
.seq body862_23 body862_32

def body862_34 : Prog (BitVec 64) :=
.seq body862_22 body862_33

def body862_35 : Prog (BitVec 64) :=
.seq body862_21 body862_34

def body862_36 : Prog (BitVec 64) :=
.seq body862_20 body862_35

def body862_37 : Prog (BitVec 64) :=
.seq body862_19 body862_36

def body862_38 : Prog (BitVec 64) :=
.seq body862_18 body862_37

def body862_39 : Prog (BitVec 64) :=
.seq body862_17 body862_38

def body862_40 : Prog (BitVec 64) :=
.seq body862_16 body862_39

def body862_41 : Prog (BitVec 64) :=
.seq body862_15 body862_40

def body862_42 : Prog (BitVec 64) :=
.seq body862_14 body862_41

def body862_43 : Prog (BitVec 64) :=
.seq body862_13 body862_42

def body862_44 : Prog (BitVec 64) :=
.seq body862_12 body862_43

def body862_45 : Prog (BitVec 64) :=
.seq body862_11 body862_44

def body862_46 : Prog (BitVec 64) :=
.seq body862_10 body862_45

def body862_47 : Prog (BitVec 64) :=
.seq body862_9 body862_46

def body862_48 : Prog (BitVec 64) :=
.seq body862_8 body862_47

def body862_49 : Prog (BitVec 64) :=
.seq body862_7 body862_48

def body862_50 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body862_49

def body862_51 : Prog (BitVec 64) :=
.seq body862_3 body862_50

def body862_52 : Prog (BitVec 64) :=
.seq body862_2 body862_51

def body862_53 : Prog (BitVec 64) :=
.seq body862_1 body862_52

def body862_54 : Prog (BitVec 64) :=
.seq body862_0 body862_53

def body862_55 : Prog (BitVec 64) :=
.seq body862_0 body862_1

def body862_56 : Prog (BitVec 64) :=
.seq body862_55 body862_2

def body862_57 : Prog (BitVec 64) :=
.seq body862_56 body862_3

def body862_58 : Prog (BitVec 64) :=
.seq body862_7 body862_8

def body862_59 : Prog (BitVec 64) :=
.seq body862_58 body862_9

def body862_60 : Prog (BitVec 64) :=
.seq body862_59 body862_10

def body862_61 : Prog (BitVec 64) :=
.seq body862_60 body862_11

def body862_62 : Prog (BitVec 64) :=
.seq body862_61 body862_12

def body862_63 : Prog (BitVec 64) :=
.seq body862_62 body862_13

def body862_64 : Prog (BitVec 64) :=
.seq body862_63 body862_14

def body862_65 : Prog (BitVec 64) :=
.seq body862_64 body862_15

def body862_66 : Prog (BitVec 64) :=
.seq body862_65 body862_16

def body862_67 : Prog (BitVec 64) :=
.seq body862_66 body862_17

def body862_68 : Prog (BitVec 64) :=
.seq body862_67 body862_18

def body862_69 : Prog (BitVec 64) :=
.seq body862_68 body862_19

def body862_70 : Prog (BitVec 64) :=
.seq body862_69 body862_20

def body862_71 : Prog (BitVec 64) :=
.seq body862_70 body862_21

def body862_72 : Prog (BitVec 64) :=
.seq body862_71 body862_22

def body862_73 : Prog (BitVec 64) :=
.seq body862_72 body862_23

def body862_74 : Prog (BitVec 64) :=
.seq body862_73 body862_24

def body862_75 : Prog (BitVec 64) :=
.seq body862_74 body862_25

def body862_76 : Prog (BitVec 64) :=
.seq body862_75 body862_26

def body862_77 : Prog (BitVec 64) :=
.seq body862_76 body862_27

def body862_78 : Prog (BitVec 64) :=
.seq body862_77 body862_28

def body862_79 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body862_78

def body862_80 : Prog (BitVec 64) :=
.seq body862_57 body862_79

def originalData862 : Decl (BitVec 64) :=
.function { name := "fork_init", inline := false, exported := false, params := [], body := body862_54, returnShape := (Flapjack.Shape.one) }
def simplifiedData862 : Decl (BitVec 64) :=
.function { name := "fork_init", inline := false, exported := false, params := [], body := body862_80, returnShape := (Flapjack.Shape.one) }
def original862 := Pancake.PanLang.declToHOL originalData862
def simplified862 := Pancake.PanLang.declToHOL simplifiedData862
end InitECandidate.Proofs.FrontendStages.Declarations
